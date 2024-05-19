#!/usr/bin/env bash

echo "Installing system tools"
sudo pacman -S \
dmidecode \
ethtool \
exfatprogs \
fuse2 \
fuse3 \
fwupd \
hwdetect \
hwinfo \
lshw \
man \
pacman-contrib \
usbutils \
zsh \
--noconfirm --needed
