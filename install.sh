#!/bin/bash
# install.sh

# Create symlinks instead of copying
ln -sf "$(pwd)/fish/config.fish" "$HOME/.config/fish/config.fish"
ln -sf "$(pwd)/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"
ln -sf "$(pwd)/neofetch" "$HOME/.config/neofetch"