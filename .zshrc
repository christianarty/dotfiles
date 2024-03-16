# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git gh docker docker-compose)

source $ZSH/oh-my-zsh.sh

# Tell homebrew to not autoupdate every single time I run it (just once a week).
export HOMEBREW_AUTO_UPDATE_SECS=604800

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# Load dotfiles:
for file in $HOME/.{aliases,private}; do
  [ -f "$file" ] && source "$file"
done
unset file

# Load Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Load iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Prepend personal binaries on PATH
export PATH="$HOME/bin:$PATH"

# Load PYENV if its installed

PYENV_ROOT="$HOME/.pyenv"
if [ -d "$PYENV_ROOT" ]; then
  export PYENV_ROOT="$PYENV_ROOT"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

if which rbenv >/dev/null; then
  eval "$(rbenv init - zsh)"
fi
