#!/usr/bin/env bash

echo "Installing i3-wm packages"

sudo pacman -S \
i3-wm \
i3lock \
dex \
dunst \
feh \
gnome-keyring \
materia-gtk-theme \
papirus-icon-theme \
lxappearance-gtk3 \
lxsession-gtk3 \
network-manager-applet \
picom \
polybar \
rofi \
seahorse \
thunar \
thunar-archive-plugin \
thunar-media-tags-plugin \
thunar-volman \
gvfs \
file-roller \
tumbler \
ffmpegthumbnailer \
maim \
xclip \
xdg-user-dirs \
xdg-utils \
xorg-apps \
xorg-xinit \
xorg-server \
xss-lock \
--noconfirm --needed
