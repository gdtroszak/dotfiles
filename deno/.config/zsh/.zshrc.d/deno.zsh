# Ensure deno is installed
if ! is_installed deno; then
  echo "[deno.zsh] deno not found, installing..."
  brew install deno
fi
