#!/usr/bin/env bash

echo "Installing audio support"
sudo pacman -S \
pipewire \
pipewire-audio \
pipewire-pulse \
wireplumber \
pavucontrol \
--noconfirm --needed


echo "Installing bluetooth support"
sudo pacman -S \
bluez \
bluez-utils \
blueman \
--noconfirm --needed

sudo systemctl enable --now bluetooth.service
