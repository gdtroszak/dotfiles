# Ensure tmux is installed
if ! is_installed tmux; then
  echo "[tmux.zsh] tmux not found, installing..."
  brew install tmux
fi
