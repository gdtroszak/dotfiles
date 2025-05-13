export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"

# Ensure asdf is installed
if ! is_installed asdf; then
  echo "[node.zsh] asdf not found, installing..."
  brew install asdf
fi

# Ensure gpg is installed
if ! is_installed gpg; then
  echo "[node.zsh] gpg not found, installing..."
  brew install gpg
fi

# Ensure gawk is installed
if ! is_installed gawk; then
  echo "[node.zsh] gawk not found, installing..."
  brew install gawk
fi

# Install the nodejs plugin if not already present
if ! asdf plugin list | grep -q '^nodejs$'; then
  echo "[node.zsh] Installing asdf nodejs plugin..."
  asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git >/dev/null
fi
