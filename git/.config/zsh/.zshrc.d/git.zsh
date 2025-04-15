# Ensure gh is installed
if ! is_installed gh; then
  echo "[git.zsh] gh not found, installing..."
  brew install gh
fi
