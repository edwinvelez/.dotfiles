#!/usr/bin/env bash

echo "Installing NVIDIA video drivers"

sudo pacman -S \
nvidia \
nvidia-lts \
nvidia-settings \
nvidia-utils \
--noconfirm --needed
