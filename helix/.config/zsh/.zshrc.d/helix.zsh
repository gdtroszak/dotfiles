# Ensure helix is installed
if ! is_installed hx; then
  echo "[helix.zsh] helix not found, installing..."
  brew install helix
fi
