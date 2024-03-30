#!/usr/bin/env bash

echo "Installing useful tool packages"
sudo pacman -S \
alacritty \
btop \
curl \
ethtool \
exfatprogs \
fuse2 \
fuse3 \
fwupd \
git \
hwdetect \
hwinfo \
lshw \
neofetch \
neovim \
openssh \
pacman-contrib \
ranger \
rsync \
smartmontools \
starship \
stow \
usbutils \
unzip \
wget \
xdg-user-dirs \
xdg-utils \
zip \
--needed --noconfirm

echo "Enabling sshd daemon"
sudo systemctl enable --now sshd.service

echo "Enabling S.M.A.R.T daemon"
sudo systemctl enable --now smartd.service

echo "Installing Node Version Manager"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

echo "Installing latest version of npm"
source "$HOME/.zshrc"
nvm install --latest-npm 'lts/*'

echo "installing bun package manager"
curl -fsSL https://bun.sh/install | bash
