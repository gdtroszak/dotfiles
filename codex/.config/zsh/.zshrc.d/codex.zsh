export CODEX_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/codex"

# Ensure codex is installed
if ! is_installed codex; then
  echo "[codex.zsh] codex not found, installing..."
  brew install codex
fi
