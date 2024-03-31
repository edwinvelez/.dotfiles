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
network-manager-applet \
picom \
polybar \
rofi \
seahorse \
\
thunar \
thunar-archive-plugin \
thunar-media-tags-plugin \
thunar-volman \
gvfs \
file-roller \
tumbler \
ffmpegthumbnailer \
\
xf86-video-intel \
xorg-apps \
xorg-xinit \
xorg-server \
xss-lock \
--noconfirm --needed
