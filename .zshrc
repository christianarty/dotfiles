export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git docker docker-compose rust)

source $ZSH/oh-my-zsh.sh

# Tell homebrew to not autoupdate every single time I run it (just once a week).
export HOMEBREW_AUTO_UPDATE_SECS=604800

# Load dotfiles:
for file in ~/.{aliases,private}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
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
