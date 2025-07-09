#!/bin/bash
set -e

echo "dotf1l3 bootstrap"

# 1. install paru, if not found
if ! command -v paru &> /dev/null; then
    echo "paru not found, installing paru"
    sudo pacman -S --needed base-devel git
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
    cd ..
    rm -rf paru
fi

# 2. package list
PACKAGES=(
    hyprland hyprpaper swaylock-effects swayidle rofi
    qt6ct kitty fastfetch zsh git curl wget oh-my-posh
    starship papirus-icon-theme capitane-cursors
    ttf-jetbrains-mono-nerd ttf-font-awesome eww

)

echo "installing packages"
paru -S --noconfirm --needed "${PACKAGES[@]}"

# 3. set zsh as default
if [ "$SHELL" != "/bin/zsh" ]; then
    echo "changing default shell"
    chsh -s /bin/zsh
fi

# 4. dotf1l3 installer
if [ -f ./install.sh ]; then
    echo "installing dotf1l3"
    ./install.sh
else
    echo "install.sh not found"
    exit 1
fi

# 5. enable sddm for autologin
if command -v sddm &> /dev/null; then
    echo
