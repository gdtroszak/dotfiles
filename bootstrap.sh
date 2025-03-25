#!/bin/sh

set -e

# Create XDG directories
mkdir -p "$HOME/.config"
mkdir -p "$HOME/.cache"
mkdir -p "$HOME/.local/share"
mkdir -p "$HOME/.local/state"

stow zsh

echo "Dotfiles stowed successfully."
