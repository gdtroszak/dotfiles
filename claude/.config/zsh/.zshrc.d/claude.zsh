export CLAUDE_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/claude"

# Ensure claude is installed
if ! is_installed claude; then
  echo "[claude.zsh] claude-code not found, installing..."
  brew install claude-code
fi
