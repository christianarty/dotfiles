export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git docker docker-compose rust)

source $ZSH/oh-my-zsh.sh

# Prepend personal binaries on PATH
export PATH="$HOME/bin:$PATH"

# Tell homebrew to not autoupdate every single time I run it (just once a week).
export HOMEBREW_AUTO_UPDATE_SECS=604800

# Include alias file (if present) containing aliases for ssh, etc.
if [ -f ~/.aliases ]
then
  source ~/.aliases
fi
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
