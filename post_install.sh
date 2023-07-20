#!/bin/bash

# Update package manager and install essential packages
sudo pacman -Syu
sudo pacman -S kitty starship fish catfish

# Install base development tools and paru AUR helper
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru

# Install additional packages using paru
paru -S autotiling neovim btop vscode-langservers-extracted rhythmbox rustup chromium zathura

# Set Rust to use the stable toolchain as the default
rustup default stable

# Print a message indicating the script has completed successfully
echo "Post-installation script completed."
