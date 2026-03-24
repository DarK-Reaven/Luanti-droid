#!/bin/bash

# Update package list
echo "Updating package list..."
sudo apt update -y

# List of packages to install
packages=(
    "wget"
    "curl"
    "git"
    "vim"
    "htop"
    "neofetch"
)

# Install packages in a single command
echo "Installing packages: ${packages[*]}"
sudo apt install -y "${packages[@]}"

# Verify installation
echo "Installation complete. Testing installed tools..."
for pkg in "${packages[@]}"; do
    if command -v "$pkg" &> /dev/null; then
        echo "✓ $pkg is installed and working."
    else
        echo "✗ $pkg installation failed."
    fi
done   