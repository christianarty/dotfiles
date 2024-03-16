#!/usr/bin/env zsh

# Set your default shell to zsh

if [ "$SHELL" != "$(which zsh)" ]; then
  echo "Setting your default shell to zsh"
  chsh -s $(which zsh)
fi

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing Oh-My-Zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

fi
# Install Oh-My-Zsh
