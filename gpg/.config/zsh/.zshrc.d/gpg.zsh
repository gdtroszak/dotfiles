export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
export GPG_TTY="$(tty)"

# Ensure gpg is installed
if ! is_installed gpg; then
  echo "[gpg.zsh] gpg not found, installing..."
  brew install gpg
fi

