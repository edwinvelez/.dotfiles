#!/usr/bin/env bash

echo "Installing user tools"
sudo pacman -S \
alacritty \
btop \
curl \
git \
neofetch \
neovim \
ranger \
rsync \
starship \
stow \
unzip \
wget \
zip \
--noconfirm --needed
