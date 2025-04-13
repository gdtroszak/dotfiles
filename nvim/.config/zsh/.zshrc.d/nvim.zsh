# Ensure neovim is installed
if ! command -v nvim >/dev/null 2>&1; then
  echo "[nvim.zsh] nvim not found, installing..."
  brew install nvim
fi

# Ensure luarocks is installed
if ! command -v luarocks >/dev/null 2>&1; then
  echo "[nvim.zsh] luarocks not found, installing..."
  brew install luarocks
fi
