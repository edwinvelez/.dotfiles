#!/usr/bin/env bash

echo "Installing paru"
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm --needed

echo "Cleaning up paru build directory"
cd ..
rm -rf paru

echo "Installing google-chrome"
paru -S google-chrome --noconfirm --needed

echo "Installing Dropbox"
paru -S dropbox --noconfirm --needed

echo "Installing VS Code"
paru -S visual-studio-code-bin --noconfirm --needed
