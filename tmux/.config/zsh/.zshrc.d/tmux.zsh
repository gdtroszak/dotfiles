# Ensure tmux is installed
if ! is_installed tmux; then
  echo "[tmux.zsh] tmux not found, installing..."
  brew install tmux
fi

# Aliases
alias ta='tmux attach -t'
alias tl='tmux ls'
alias ts='tmux new -s'
