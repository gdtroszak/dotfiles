# XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# zsh
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# fzf
export FZF_DEFAULT_OPTS="--height 40% --layout reverse --border"

# zoxide
export _ZO_DATA_DIR=$XDG_DATA_HOME/zoxide
