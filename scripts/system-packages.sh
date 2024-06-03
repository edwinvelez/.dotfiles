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

if [[ "$IS_LAPTOP" != true ]]; then
  echo "Installing desktop system packages"
  sudo pacman -S \
  amd-ucode \
  --noconfirm --needed
else
  echo "Installing laptop system packages"
  sudo pacman -S \
  intel-ucode \
  linux-firmware-qcom \
  --noconfirm --needed
fi

# Boot loader entries
sudo cp ./configs/boot-loaders/loader.conf /boot/loader

if [[ "$IS_LAPTOP" != true ]]; then
  echo "Copying desktop boot loader entries"
  sudo cp ./configs/boot-loaders/entries/amd/*.conf /boot/loader/entries
else
  echo "Copying laptop boot loader entries"
  sudo cp ./configs/boot-loaders/entries/intel/*.conf /boot/loader/entries
fi
