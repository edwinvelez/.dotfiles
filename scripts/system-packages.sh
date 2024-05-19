#!/usr/bin/env bash

echo "Installing system packages"
sudo pacman -S \
base \
base-devel \
linux \
linux-headers \
linux-lts \
linux-lts-headers \
linux-firmware \
sof-firmware \
--noconfirm --needed

if [[ "$IS_LAPTOP" ]]; then
  sudo pacman -S \
  intel-ucode \
  linux-firmware-qcom \
  --noconfirm --needed
fi

# My desktop
if [[ ! "$IS_LAPTOP" ]]; then
  sudo pacman -S \
  amd-ucode \
  --noconfirm --needed
fi

# Copying Intel boot loader entries
sudo cp ./configs/boot-loaders/loader.conf /boot/loader

if [[ ! "$IS_LAPTOP" ]]; then
  sudo cp ./configs/boot-loaders/entries/amd/arch-linux.conf /boot/loader/entries
  sudo cp ./configs/boot-loaders/entries/amd/arch-linux-fallback.conf /boot/loader/entries
else
  sudo cp ./configs/boot-loaders/entries/intel/arch-linux.conf /boot/loader/entries
  sudo cp ./configs/boot-loaders/entries/intel/arch-linux-fallback.conf /boot/loader/entries
fi