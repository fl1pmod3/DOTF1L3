#!/bin/bash

set -e

echo "installing chief-gui"

configs=(
    fastfetch
    gtk-3.0
    gtk-4.0
    hypr
    kitty
    ohmyposh
    qt6ct
    rofi
    swaync
    eww
    swaylock
    zsh
)

for dir in "${configs[@]}"; do
    echo "-> linking $dir"
    ln -sf "DOTFILES_DIR/.config/$dir" "$CONFIG_DIR/$dir"
done

# WALLPAPERS
mkdir -p ~/.lotuspng
cp -n "$DOTFILES_DIR/wallpapers/"* ~/lotuspng/

# ZSH config
ln -sf "DOTFILES_DIR/.config/zsh/.zshrc" ~/.zshrc

echo "dotf1l3 installed"
