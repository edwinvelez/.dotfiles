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
reflector \
usbutils \
zsh \
--noconfirm --needed

echo "Updating pacman latest mirrors"
sudo reflector --verbose --sort rate --age 24 --country US --protocol https --save /etc/pacman.d/mirrorlist
