# Ensure claude is installed
if ! is_installed claude; then
  echo "[claude.zsh] claude-code not found, installing..."
  brew install claude-code
fi
