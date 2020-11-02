#!/bin/bash
qemu-img create ./creek.img 2G
sleep 2
fdisk ./creek.img  << EOF
n




a
w
EOF
sleep 2
losetup /dev/loop31 ./creek.img
sleep 2
mke2fs /dev/loop31
sleep 2
mkdir /mnt/creek
mount /dev/loop31 /mnt/creek
sleep 2
# umount /mnt/creek

grub-install --boot-directory=/mnt/creek/boot --force --allow-floppy /dev/loop31
sleep 2
cp bootdisk/bzImage /mnt/creek
cp bootdisk/grub.cfg /mnt/creek/boot/grub/
sleep 2
# losetup -d /dev/loop31
