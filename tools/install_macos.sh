#!/bin/bash
# install_macos.sh

echo "Installing tools for macOS using Homebrew..."

if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    if [[ $(uname -m) == "arm64" ]]; then
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
fi

brew install \
    fish \
    kitty \
    neofetch \
    thefuck \
    git \
    vim \
    htop

echo "macOS tools installed successfully!"