#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <signal.h>
#include <stdbool.h>
#include <stdint.h>
#include <string.h>

void print_usage(const char *program_name) {
    printf("Usage: %s <uio_device_number> <address_offset> <map_size_in_hex> [polling]\n", program_name);
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

    if (address_offset % sizeof(uint32_t) != 0) {
        fprintf(stderr, "Address offset must be aligned to 4 bytes.\n");
        return EXIT_FAILURE;
    }

    char uio_device_path[64];
    snprintf(uio_device_path, sizeof(uio_device_path), "/dev/uio%d", uio_device_number);

    int uio_fd = open(uio_device_path, O_RDONLY);
    if (uio_fd < 0) {
        perror("Failed to open UIO device");
        return EXIT_FAILURE;
    }

    void *map_base = mmap(NULL, map_size, PROT_READ, MAP_SHARED, uio_fd, 0);
    if (map_base == MAP_FAILED) {
        perror("Failed to mmap");
        close(uio_fd);
        return EXIT_FAILURE;
    }

    volatile uint32_t *addr = (volatile uint32_t *)((char *)map_base + address_offset);

    if (polling) {
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
