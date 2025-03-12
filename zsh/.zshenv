### XDG SPEC ###
#
# Attempt to adhere to the XDG spec when it's possible. It's not always
# possible, so in some cases configure programs to adhere to parts of it.
#
# Resources:
# - https://wiki.archlinux.org/title/XDG_Base_Directory

export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$XDG_CONFIG_HOME/local/share
export XDG_CACHE_HOME=$XDG_CONFIG_HOME/cache

# zsh
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file
