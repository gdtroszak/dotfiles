# Set XDG-aware Rust paths
export RUSTUP_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/rustup"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export PATH="$CARGO_HOME/bin:$PATH"

# Ensure rustup is installed (using official script)
if ! is_installed rustup; then
  echo "[rust.zsh] rustup not found, installing with official script..."
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | \
    CARGO_HOME="$CARGO_HOME" \
    RUSTUP_HOME="$RUSTUP_HOME" \
    sh -s -- -y --no-modify-path
fi

# Ensure stable toolchain is installed
if ! is_installed cargo; then
  echo "[rust.zsh] cargo not found, installing stable toolchain..."
  rustup install stable
  rustup component add rust-analyzer
fi

# Completion directory
zsh_completion_dir="$ZDOTDIR/completions"

# Generate rustup + cargo completions if missing
if [[ ! -f "$zsh_completion_dir/_rustup" ]]; then
  rustup completions zsh > "$zsh_completion_dir/_rustup"
fi

if [[ ! -f "$zsh_completion_dir/_cargo" ]]; then
  rustup completions zsh cargo > "$zsh_completion_dir/_cargo"
fi

# Suppress fallback completions for rustup
zstyle ':completion:*:*:rustup:*' file-patterns ''
