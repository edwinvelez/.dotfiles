#!/usr/bin/env bash

echo "Installing system daemons"
sudo pacman -S \
acpi \
acpid \
gufw \
ufw \
networkmanager \
openssh \
smartmontools \
--noconfirm --needed

# My laptop
if [[ "$IS_LAPTOP" ]]; then
sudo pacman -S \
tlp \
tlp-rdw \
--noconfirm --needed
fi

echo "Enabling acpid daemon"
sudo systemctl enable --now acpid.service

echo "Enabling Uncomplicated Firewall (ufw) daemon"
sudo systemctl enable --now ufw.service
sudo ufw default deny
sudo ufw enable

echo "Enabling NetworkManager daemon"
sudo systemctl enable --now NetworkManager.service

echo "Enabling sshd daemon"
sudo systemctl enable --now sshd.service

echo "Enabling S.M.A.R.T daemon"
sudo systemctl enable --now smartd.service

# My laptop
if [[ "$IS_LAPTOP" ]]; then
echo "Masking rfkill"
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket

echo "Copying /etc/tlp.conf to location"
sudo cp configs/tlp.conf /etc/tlp.conf

echo "Enabling tlp daemon"
sudo systemctl enable --now tlp.service
fi

echo "Enabling radio device wizard daemon"
sudo systemctl enable --now NetworkManager-dispatcher.service
