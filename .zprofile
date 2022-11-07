export LANG=en_US.UTF-8
# Homebrew Shim init
architecture=$(uname -m)
if [[$architecture -eq "arm64"]]
then
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  eval "$(/usr/local/bin/brew shellenv)"
# Set Volta Home and Prepend to Path
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"


