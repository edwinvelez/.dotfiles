#!/usr/bin/env bash

echo "Synchronizing pacman database"
sudo pacman -Syyu

echo "Starting Arch Linux package installation"
source essentials.sh
source intel-drivers.sh
source nvidia-drivers.sh
source i3wm.sh
source audio-bluetooth.sh
source printers.sh
source fonts.sh
source useful-tools.sh
source paru.sh
