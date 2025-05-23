# XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# brew
export HOMEBREW_BUNDLE_FILE=$XDG_CONFIG_HOME/brew/Brewfile

# less
export LESSHISTFILE=$XDG_STATE_HOME/less/history
mkdir -p $XDG_STATE_HOME/less

# zsh
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
# disable macOS shell sessions
SHELL_SESSIONS_DISABLE=1

# fzf
export FZF_DEFAULT_OPTS='
  --height ~50%
  --color gutter:-1
  --layout reverse
  --border
  --highlight-line'

# zoxide
export _ZO_DATA_DIR=$XDG_DATA_HOME/zoxide
mkdir -p $_ZO_DATA_DIR
export _ZO_FZF_OPTS=$FZF_DEFAULT_OPTS
