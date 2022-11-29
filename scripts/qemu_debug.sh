#!/bin/bash
qemu-system-riscv64 -machine virt \
    -kernel build/arch/riscv/boot/Image \
    -append "root=/dev/vda rw init=/bin/sh console=ttyS0" \
    -drive file=rootfs/rootfs-riscv.ext4,format=raw,id=hd0 \
    -device virtio-blk-device,drive=hd0 \
    -nographic -s -S
