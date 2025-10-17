#!/bin/bash
# install_linux_apt.sh

echo "Installing tools for Ubuntu/Debian using apt..."
sudo apt update

sudo apt install -y \
    fish \
    kitty \
    neofetch \
    curl \
    wget \
    git \
    vim \
    htop

sudo apt install -y python3-pip
pip3 install --user thefuck

echo "Linux (apt) tools installed successfully!"