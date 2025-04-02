# Ensure luarocks is installed
if ! command -v luarocks >/dev/null 2>&1; then
  echo "[nvim.zsh] luarocks not found, installing..."
  brew install luarocks
fi
