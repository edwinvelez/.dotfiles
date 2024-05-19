#!/usr/bin/env bash

LAPTOP_HOSTNAME="my-arch-laptop"
DESKTOP_HOSTNAME="my-arch-pc"
IS_LAPTOP=false

export IS_LAPTOP

# Laptop or Desktop?
if [[ "$LAPTOP_HOSTNAME" == $(hostnamectl hostname) ]]; then
    IS_LAPTOP=true
fi

echo "Synchronizing pacman database"
sudo pacman -Syyu

echo "Starting Arch Linux package installation"
source system-packages.sh
source system-tools.sh
source system-daemons.sh

if [[ "$IS_LAPTOP" ]]; then
  source intel-drivers.sh
fi

source nvidia-drivers.sh
source user-tools.sh
source fonts.sh
source audio-bluetooth.sh
source printers.sh
source node-js.sh
source paru.sh
