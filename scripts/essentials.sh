#!/usr/bin/env bash

echo "Installing essential system packages"
sudo pacman -S \
base \
base-devel \
linux \
linux-headers \
linux-lts \
linux-lts-headers \
linux-firmware \
linux-firmware-qcom \
sof-firmware \
reflector \
networkmanager \
ufw \
gufw \
zsh \
--needed --noconfirm

echo "Updating pacman latest mirrors"
sudo reflector --verbose --sort score --age 24 --country US --protocol https --save /etc/pacman.d/mirrorlist

echo "Enabling NetworkManager daemon"
sudo systemctl enable --now NetworkManager.service

echo "Enabling Uncomplicated Firewall (ufw)"
sudo systemctl enable --now ufw.service
sudo ufw default deny
sudo ufw enable

