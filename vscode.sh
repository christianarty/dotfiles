#!/usr/bin/env zsh

# Check if Homebrew's bin exists and if it's not already in the PATH
if [ -x "/opt/homebrew/bin/brew" ] && [[ ":$PATH:" != *":/opt/homebrew/bin:"* ]]; then
  export PATH="/opt/homebrew/bin:$PATH"
fi

# Install VS Code Extensions
extensions=(
  ms-python.python
  ms-python.pylint
  ms-python.vscode-pylance
  ms-python.debugpy
  github.copilot
  github.copilot-chat
  github.github-vscode-theme
  github.vscode-pull-request-github
  eamodio.gitlens
  dbaeumer.vscode-eslint
  esbenp.prettier-vscode
  editorconfig.editorconfig
  vscode-icons-team.vscode-icons
  yoavbls.pretty-ts-errors
)

# Get a list of all currently installed extensions.
installed_extensions=$(code --list-extensions)

for extension in "${extensions[@]}"; do
  if echo "$installed_extensions" | grep -qi "^$extension$"; then
    echo "$extension is already installed. Skipping..."
  else
    echo "Installing $extension..."
    code --install-extension "$extension"
  fi
done

echo "VS Code extensions have been installed."

# Open VS Code to sign-in to extensions
code .
echo "Login to extensions (Copilot, Grammarly, etc) within VS Code."
echo "Press enter to continue..."
read
