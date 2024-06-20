#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <signal.h>
#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include <poll.h>

#define GPIO_DATA_OFFSET   0x00
#define GPIO_TRI_OFFSET    0x04
// #define GPIO_DATA2_OFFSET  0x08
// #define GPIO_TRI2_OFFSET   0x0C
#define GPIO_GLOBAL_IRQ    0x11C
#define GPIO_IRQ_CONTROL   0x128
#define GPIO_IRQ_STATUS    0x120

volatile bool keep_running = true;

void int_handler(int dummy) {
    keep_running = false;
}

unsigned int get_memory_size(char *sysfs_path_file) {
    FILE *size_fp;
    unsigned int size;
    size_fp = fopen(sysfs_path_file, "r");
    if (size_fp == NULL) {
        printf("unable to open the uio size file\n");
        exit(-1);
    }
    fscanf(size_fp, "0x%08X", &size);
    fclose(size_fp);
    return size;
}

void reg_write(void *reg_base, unsigned long offset, unsigned long value) {
    *((volatile unsigned long *)(reg_base + offset)) = value;
}

unsigned long reg_read(void *reg_base, unsigned long offset) {
    return *((volatile unsigned long *)(reg_base + offset));
}

uint8_t wait_for_interrupt(int fd_int, void *gpio_ptr) {
    static unsigned int count = 0;
    int reenable = 1;
    unsigned int reg;
    unsigned int value;
    
    struct pollfd fds = {
        .fd = fd_int,
        .events = POLLIN,
    };

    int ret = poll(&fds, 1, 100);
    printf("ret is : %d\n", ret);
    if (ret >= 1) {
        read(fd_int, (void *)&reenable, sizeof(int));
        value = reg_read(gpio_ptr, GPIO_DATA_OFFSET);
        printf("Interrupt received, GPIO value: 0x%x\n", value);

        count++;
        usleep(50000); // debounce

        reg = reg_read(gpio_ptr, GPIO_IRQ_STATUS);
        if (reg != 0) {
            reg_write(gpio_ptr, GPIO_IRQ_STATUS, 1);
        }
        write(fd_int, (void *)&reenable, sizeof(int));
    }
    return ret;
}

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: %s <uio_device_number>\n", argv[0]);
        return EXIT_FAILURE;
    }

    int uio_device_number = atoi(argv[1]);

    char uio_device_path[64];
    snprintf(uio_device_path, sizeof(uio_device_path), "/dev/uio%d", uio_device_number);

    char size_path[64];
    snprintf(size_path, sizeof(size_path), "/sys/class/uio/uio%d/maps/map0/size", uio_device_number);

    unsigned int gpio_size = get_memory_size(size_path);
    
    int fd_int = open(uio_device_path, O_RDWR);
    if (fd_int < 0) {
        perror("Failed to open UIO device");
        return EXIT_FAILURE;
    }

    void *ptr_axi_gpio = mmap(NULL, gpio_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd_int, 0);
    if (ptr_axi_gpio == MAP_FAILED) {
        perror("Failed to mmap");
        close(fd_int);
        return EXIT_FAILURE;
    }

    // Configure GPIO
    reg_write(ptr_axi_gpio, GPIO_TRI_OFFSET, 0xFFFFFFFF); // channel1 = input
    reg_write(ptr_axi_gpio, GPIO_GLOBAL_IRQ, 0x80000000); // Global interrupt enable, Bit 31 = 1
    reg_write(ptr_axi_gpio, GPIO_IRQ_CONTROL, 1);         // Channel 1 Interrupt enable

    int reenable = 1;
    write(fd_int, (void *)&reenable, sizeof(int));        // enable the interrupt controller thru the UIO subsystem

    signal(SIGINT, int_handler);
    printf("Waiting for interrupts. Press Ctrl+C to stop.\n");

    while (keep_running) {
        wait_for_interrupt(fd_int, ptr_axi_gpio);
    }

    if (munmap(ptr_axi_gpio, gpio_size) < 0) {
        perror("Failed to munmap");
    }

    close(fd_int);

    return EXIT_SUCCESS;
}
