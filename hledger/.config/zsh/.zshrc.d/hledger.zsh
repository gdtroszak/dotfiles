export LEDGER_FILE="${XDG_DATA_HOME:-$HOME/.local/share}/hledger.journal"

if ! is_installed hledger; then
  echo "[hledger.zsh] hledger not found, installing..."
  brew install hledger
fi
