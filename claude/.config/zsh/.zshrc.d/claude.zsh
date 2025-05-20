# Ensure claude-code is installed
if ! is_installed claude; then
  echo "[claude.zsh] claude not found, installing..."
  npm install -g @anthropic-ai/claude-code
  asdf reshim nodejs
fi
