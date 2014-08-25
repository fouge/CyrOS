# Compile kernel
i586-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

# Link with boot
i586-elf-gcc -T linker.ld -o kernel-cyros01.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc

	# -nostdlib : disables the "start files" crt*.o normmally added to the link command line



# Launch qemu using the kernel (qemu provides the bootloader features and the kernel is directly launch starting at address 0x100000)
qemu-system-i386 -kernel kernel-cyros01.bin

