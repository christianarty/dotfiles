# Christian's Dotfiles

Inspired by:

- https://github.com/CoreyMSchafer/dotfiles/
- https://git.herrbischoff.com/awesome-macos-command-line/about
- [Mathias Bynens' dotfiles](https://github.com/mathiasbynens/dotfiles)

## Overview

The setup includes automated scripts for installing essential software, configuring Zsh shells, and setting up Visual Studio Code. This guide will help you replicate my development environment on your machine if you desire to do so.

## Getting Started

### Prerequisites

- macOS (The scripts are tailored for macOS)

### Installation

1. Clone the repository to your local machine:
   ```sh
   git clone https://github.com/christianarty/dotfiles.git ~/dotfiles
   ```
2. Navigate to the `dotfiles` directory:
   ```sh
   cd ~/dotfiles
   ```
3. Run the installation script:
   ```sh
   ./install.sh
   ```

This script will:

- Set default shell as ZSH
- Install Oh-My-ZSH
- Create symlinks for dotfiles (`.tmux `.zshrc`, etc.)
- Run macOS-specific configurations
- Install Homebrew packages and casks
- Configure Sublime Text and Visual Studio Code

## Configuration Files

- `.zshrc`: Shell configuration files for Zsh.
- `.aliases`: Aliases for common commands. Some are personalized to my machines specifically
- `.private`: This is a file you'll create locally to hold private information and shouldn't be uploaded to version control
- `tmux.conf` - This file sets up my personal keybindings and config for tmux
- `.osx` - Sets a bunch of little system preferences around the machine so i don't have to
- `.gitignore` - A global gitignore for always useless files for git

NOTE: I did not symlink my gitconfig since this repo can be used on a work computer
