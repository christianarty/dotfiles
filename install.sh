#!/usr/bin/env zsh

#variables
dotfiledir="${HOME}/dotfiles"

echo "Running Pre-Requisites"
zsh "${dotfiledir}/prereqs.sh"

# Ensure that the $HOME/dotfiles directory exists
if [[ ! -d "${dotfiledir}" ]]; then
  echo "Creating ${dotfiledir} directory"
  mkdir "${dotfiledir}"
fi

# list of files/folders to symlink in ${homedir}
files=(zshrc zprofile aliases private gitignore tmux.conf)

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd "${dotfiledir}" || exit

# create symlinks (will overwrite old dotfiles)
for file in "${files[@]}"; do
  echo "Creating symlink to $file in home directory."
  ln -sf "${dotfiledir}/.${file}" "${HOME}/.${file}"
done

# Setup Git Defaults
echo "Setting up Git defaults"
git config --global core.excludesfile "~/.gitignore"
git config --global core.editor "vim"
git config --global pull.rebase true
git config --global fetch.prune true
git config --global diff.colorMoved zebra

# If the OS is macOS, run the macOS.sh script
if [[ $(uname -s) == "Darwin" ]]; then
  echo "Running macOS.sh"
  zsh "${dotfiledir}/macOS.sh"
fi
