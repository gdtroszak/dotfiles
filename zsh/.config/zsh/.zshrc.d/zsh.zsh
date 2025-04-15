# Ensure eza is installed
if ! is_installed eza; then
  echo "[zsh.zsh] eza not found, installing..."
  brew install eza
fi

# Ensure fzf is installed
if ! is_installed fzf; then
  echo "[zsh.zsh] fzf not found, installing..."
  brew install fzf
fi

# Ensure ripgrep is installed
if ! is_installed rg; then
  echo "[zsh.zsh] rg not found, installing..."
  brew install ripgrep
fi

# Ensure zoxide is installed
if ! is_installed zoxide; then
  echo "[zsh.zsh] zoxide not found, installing..."
  brew install zoxide
fi
