#!/usr/bin/env bash

echo "Installing printer packages"
sudo pacman -S \
cups \
hplip \
pyqt5 \
--noconfirm --needed

echo "Enabling printing services daemon"
sudo systemctl enable --now cups.service
