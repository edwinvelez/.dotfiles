#!/usr/bin/env bash

echo "Installing system daemons"
sudo pacman -S \
acpi \
acipd \
gufw \
ufw \
networkmanager \
openssh \
smartmontools \
--noconfirm --needed

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
