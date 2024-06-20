/* Simple program to check an AXI GPIO-enabled IP Block*/

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

#define GPIO_GLOBAL_IRQ 0x11C 
#define GPIO_IRQ_CONTROL 0x128 
#define GPIO_IRQ_STATUS 0x120 

void print_usage(const char *program_name) {
    printf("Usage: %s <uio_device_number> <address_offset> <map_size_in_hex> [polling|interrupt]\n", program_name);
}

volatile bool keep_running = true;

void int_handler(int dummy) {
    keep_running = false;
}

int main(int argc, char *argv[]) {
    if (argc < 4 || argc > 5) {
        print_usage(argv[0]);
        return EXIT_FAILURE;
    }

    int uio_device_number = atoi(argv[1]);
    off_t address_offset = strtoul(argv[2], NULL, 0);
    size_t map_size = strtoul(argv[3], NULL, 16);
    bool polling = (argc == 5 && strcmp(argv[4], "polling") == 0);
    bool interrupt = (argc == 5 && strcmp(argv[4], "interrupt") == 0);

    if (address_offset % sizeof(uint32_t) != 0) {
        fprintf(stderr, "Address offset must be aligned to 4 bytes.\n");
        return EXIT_FAILURE;
    }

    char uio_device_path[64];
    snprintf(uio_device_path, sizeof(uio_device_path), "/dev/uio%d", uio_device_number);

    int uio_fd = open(uio_device_path, O_RDWR);
    if (uio_fd < 0) {
        perror("Failed to open UIO device");
        return EXIT_FAILURE;
    }

    void *map_base = mmap(NULL, map_size, PROT_READ | PROT_WRITE, MAP_SHARED, uio_fd, 0);
    if (map_base == MAP_FAILED) {
        perror("Failed to mmap");
        close(uio_fd);
        return EXIT_FAILURE;
    }

    struct pollfd uio_poll = {
        .fd = uio_fd,      
        .events = POLLIN,
    };

    volatile uint32_t *addr = (volatile uint32_t *)((char *)map_base + address_offset);
    volatile uint32_t *gier = (volatile uint32_t *)((char *)map_base + GPIO_GLOBAL_IRQ);
    volatile uint32_t *ier = (volatile uint32_t *)((char *)map_base + GPIO_IRQ_CONTROL);
    volatile uint32_t *isr = (volatile uint32_t *)((char *)map_base + GPIO_IRQ_STATUS);

    int ret;

    if (interrupt) {
        signal(SIGINT, int_handler);
        *gier = 0x80000000; //Global interrupt enable
        *ier = (uint32_t) 1; //Channel 1 interrupt enable
        uint32_t reenable = 1;
        printf("Printing value at address offset 0x%lx when an interrupt occurs. Press Ctrl+C to stop.\n", address_offset);
        while(keep_running) {
            ret = poll(&uio_poll,1,-1);
            if(ret >= 1) {
                read(uio_fd,&reenable,sizeof(uint32_t));
                uint32_t value = *addr;
                printf("Interrupt detected ! Value: 0x%x\n", value);
                if(*isr != (uint32_t) 0) {
                    *isr = (uint32_t) 1;
                }
                write(uio_fd,&reenable,sizeof(uint32_t)); //Reenable the interrupt in the UIO subsystem of Linux, in theory shouldn't be needed but for some reason it is...
            }
        }

    } else if (polling) {
        signal(SIGINT, int_handler);
        printf("Polling value at address offset 0x%lx. Press Ctrl+C to stop.\n", address_offset);
        while (keep_running) {
            uint32_t value = *addr;
            printf("Value: 0x%x\n", value);
            sleep(1);
        }
    } else {
        uint32_t value = *addr;
        printf("Value at address offset 0x%lx: 0x%x\n", address_offset, value);
    }

    if (munmap(map_base, map_size) < 0) {
        perror("Failed to munmap");
    }

    close(uio_fd);

    return EXIT_SUCCESS;
}
