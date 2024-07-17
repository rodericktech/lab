#!/bin/bash
# 002-filesystem_creation.sh
#
# Before running this script, the user must partition the target disk.
#
# This script assumes the following partitioning scheme:
#
# /dev/sda1   ext4    200M    /boot
# /dev/sda2   vfat    1G      /boot/efi
# /dev/sda3   -       10M     (BIOS boot)
# /dev/sda4   swap    4G      (swap)
# /dev/sda5   ext4    50G     /
# /dev/sda6   ext4    30G     /opt
# /dev/sda7   ext4    50G     /usr/src
# /dev/sda8   ext4    100G+   /home

DISK_LABEL=sda

mkfs -v -t vfat /dev/$DISK_LABEL2

mkfs -v -t ext4 /dev/$DISK_LABEL1
mkfs -v -t ext4 /dev/$DISK_LABEL5
mkfs -v -t ext4 /dev/$DISK_LABEL6
mkfs -v -t ext4 /dev/$DISK_LABEL7
mkfs -v -t ext4 /dev/$DISK_LABEL8

mkswap /dev/$DISK_LABEL4

# set LFS
LFS=/mnt/lfs
export LFS

# root (/)
mkdir -pv $LFS
mount -v -t ext4 /dev/$DISK_LABEL5 $LFS

# boot and efi
mkdir -pv $LFS/boot
mount -v -t ext4 /dev/$DISK_LABEL1 $LFS/boot
mkdir -pv $LFS/boot/efi
mount -v -t vfat /dev/$DISK_LABEL2 $LFS/boot/efi

# opt, usr/src, and home
mkdir -pv $LFS/opt
mount -v -t ext4 /dev/$DISK_LABEL6 $LFS/opt
mkdir -pv $LFS/usr/src
mount -v -t ext4 /dev/$DISK_LABEL7 $LFS/usr/src
mkdir -pv $LFS/home
mount -v -t ext4 /dev/$DISK_LABEL8 $LFS/home

swapon /dev/$DISK_LABEL4
