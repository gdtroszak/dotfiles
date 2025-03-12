# Homebrew
BREW_LOCATION="${BREW_LOCATION:-}"

for loc in \
  "$BREW_LOCATION" \
  "/opt/homebrew/bin/brew" \
  "/usr/local/bin/brew" \
  "/home/linuxbrew/.linuxbrew/bin/brew" \
  "$HOME/.linuxbrew/bin/brew"
do
  if [[ -x "$loc" ]]; then
    BREW_LOCATION="$loc"
    break
  fi
done

# Ensure we found an executable Homebrew installation
if [[ -x "$BREW_LOCATION" ]]; then
  eval "$("$BREW_LOCATION" shellenv)"
fi

unset BREW_LOCATION
