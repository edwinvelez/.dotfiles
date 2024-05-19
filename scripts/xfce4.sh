#!/usr/bin/env bash

echo "Installing Xfce packages"

sudo pacman -S \
xfce4 \
xfce4-goodies \
gnome-keyring \
materia-gtk-theme \
papirus-icon-theme \
lxappearance-gtk3 \
lxsession-gtk3 \
network-manager-applet \
seahorse \
thunar \
thunar-archive-plugin \
thunar-media-tags-plugin \
thunar-volman \
gvfs \
file-roller \
tumbler \
ffmpegthumbnailer \
xdg-user-dirs \
xdg-utils \
xorg-apps \
xorg-xinit \
xorg-server \
--noconfirm --needed
