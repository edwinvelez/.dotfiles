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
  sudo pacman -S linux-firmware-qcom --noconfirm --needed
fi

