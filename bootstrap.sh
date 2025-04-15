#!/bin/sh

set -eu

REPO_URL="https://github.com/gdtroszak/dotfiles.git"
CLONE_DIR="${HOME}/.dotfiles"
CONFIG_ZSH_PATH="${CLONE_DIR}/zsh/.config/zsh"

if [ ! -d "$CLONE_DIR" ]; then
  echo "Cloning dotfiles into $CLONE_DIR..."
  git clone "$REPO_URL" "$CLONE_DIR"
else
  echo "Dotfiles repo already exists at $CLONE_DIR."
fi

. "$CONFIG_ZSH_PATH/functions.zsh"

if [ "$(uname)" != "Darwin" ]; then
  echo "Error: This bootstrap script currently only supports macOS." >&2
  exit 1
fi

if ! is_installed brew ; then
  echo "Installing Homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # Make Homebrew available in this shell session
  if [ -x /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  elif [ -x /usr/local/bin/brew ]; then
    eval "$(/usr/local/bin/brew shellenv)"
  else
    echo "Error: brew was installed but not found in expected locations." >&2
    exit 1
  fi
else
  echo "Homebrew already installed."
fi

echo "Installing core packages with Homebrew..."
brew update

brew install \
  git \
  zsh \
  stow \
 
echo "Done installing core Homebrew packages."

XDG_CACHE_HOME=$HOME/.cache
XDG_CONFIG_HOME=$HOME/.config
XDG_DATA_HOME=$HOME/.local/share
XDG_STATE_HOME=$HOME/.local/state
ZDOTDIR=$XDG_CONFIG_HOME/zsh

# Create XDG directories (and some others)
mkdir -p "$XDG_CACHE_HOME" "$XDG_DATA_HOME" "$XDG_STATE_HOME" "$ZDOTDIR"

stow zsh
stow tmux

echo "Dotfiles stowed successfully."

exec zsh -l
