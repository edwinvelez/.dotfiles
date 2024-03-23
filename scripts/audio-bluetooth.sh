#!/usr/bin/env bash

echo "Installing audio packages"
sudo pacman -S \
pipewire \
pipewire-audio \
pipewire-pulse \
wireplumber \
pavucontrol \
--noconfirm --needed


echo "Installing bluetooth packages"
sudo pacman -S \
bluez \
bluez-utils \
blueman \
--noconfirm --needed

sudo systemctl enable --now bluetooth.service
