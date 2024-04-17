#!/usr/bin/env bash

echo "Installing Docker"
sudo pacman -S \
docker \
docker-compose \
--noconfirm --needed

echo "Adding current user to the docker group."
sudo usermod -aG docker $USER

echo "Enabling Docker socket"
sudo systemctl enable docker.socket