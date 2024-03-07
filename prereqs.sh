#!/usr/bin/env zsh

# Set your default shell to zsh
echo "Setting your default shell to zsh"
chsh -s $(which zsh)

# Install Oh-My-Zsh
echo "Installing Oh-My-Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
