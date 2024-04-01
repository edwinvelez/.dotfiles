#!/usr/bin/env bash

echo "Installing Intel video drivers"

sudo pacman -S \
mesa \
xf86-video-intel \
--noconfirm --needed
