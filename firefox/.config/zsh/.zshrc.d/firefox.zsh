# Ensure firefox is installed
if ! is_installed firefox; then
  echo "[firefox.zsh] firefox not found, installing..."
  brew install firefox
fi
