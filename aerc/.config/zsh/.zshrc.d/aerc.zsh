# Ensure aerc is installed
if ! is_installed aerc; then
  echo "[aerc.zsh] aerc not found, installing..."
  brew install aerc
fi

export W3M_DIR="$XDG_STATE_HOME/w3m"
# Ensure w3m is installed
if ! is_installed w3m; then
  echo "[aerc.zsh] w3m not found, installing..."
  brew install w3m
fi
