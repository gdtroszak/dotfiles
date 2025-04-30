# Ensure helix is installed
if ! is_installed helix; then
  echo "[helix.zsh] helix not found, installing..."
  brew install helix
fi
