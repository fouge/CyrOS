# Compile kernel
i586-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

# Link with boot
i586-elf-gcc -T linker.ld -o kernel-cyros01.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc

# Launch qemu
qemu-system-i386 -kernel kernel-cyros01.bin

