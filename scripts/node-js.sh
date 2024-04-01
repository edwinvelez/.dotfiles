#!/usr/bin/env bash

echo "Installing Node Version Manager (nvm)"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

echo "Installing Node Package Manager (npm)"
source "$HOME/.zshrc"
nvm install --latest-npm 'lts/*'

echo "installing bun package manager"
curl -fsSL https://bun.sh/install | bash
