# Ensure neovim is installed
if ! is_installed nvim; then
  echo "[nvim.zsh] nvim not found, installing..."
  brew install nvim
fi

# Ensure luarocks is installed
if ! is_installed luarocks; then
  echo "[nvim.zsh] luarocks not found, installing..."
  brew install luarocks
fi
