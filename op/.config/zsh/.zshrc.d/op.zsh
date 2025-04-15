# Ensure 1password-cli is installed
if ! is_installed op; then
  echo "[op.zsh] 1password-cli not found, installing..."
  brew install 1password-cli
fi

op completion zsh > $ZDOTDIR/completions/_op
