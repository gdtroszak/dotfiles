#!/bin/sh

set -eu

if [ "$(uname)" != "Darwin" ]; then
  echo "Error: This bootstrap script currently only supports macOS." >&2
  exit 1
fi

REPO_URL="https://github.com/gdtroszak/dotfiles.git"
CLONE_DIR="${HOME}/.dotfiles"

if ! command -v brew >/dev/null 2>&1 ; then
  echo "Installing Homebrew..."
  sudo -v
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

if [ ! -d "$CLONE_DIR" ]; then
  echo "Cloning dotfiles into $CLONE_DIR..."
  git clone "$REPO_URL" "$CLONE_DIR"
else
  echo "Dotfiles repo already exists at $CLONE_DIR."
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

stow -d "$CLONE_DIR" zsh
stow -d "$CLONE_DIR" tmux

echo "Dotfiles stowed successfully."

exec zsh -l
