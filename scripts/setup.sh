#!/usr/bin/env bash

export IS_LAPTOP=false

if [[ $(hostnamectl chassis) == "laptop" ]]; then
  IS_LAPTOP=true
fi

echo "Synchronizing pacman database"
sudo pacman -Syyu

echo "Starting Arch Linux package installation"
source system-packages.sh
source system-tools.sh
source system-daemons.sh
source intel-drivers.sh
source nvidia-drivers.sh
source user-tools.sh
source fonts.sh
source audio-bluetooth.sh
source printers.sh
source node-js.sh
source paru.sh
