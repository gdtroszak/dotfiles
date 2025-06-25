local ZAP_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/zap"

# Install zap if necessary
if [ ! -d "$ZAP_DIR" ]; then
  echo "Installing Zap..."
  zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) -k --branch release-v1
  echo "Zap installed."
fi

[ -f "$ZAP_DIR/zap.zsh" ] && source "$ZAP_DIR/zap.zsh"
autoload -Uz plug

# plugins
plug "Aloxaf/fzf-tab"
plug "zap-zsh/fzf"
plug "zap-zsh/vim"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"


# source
plug "$ZDOTDIR/functions.zsh"
plug "$ZDOTDIR/aliases.zsh"
plug "$ZDOTDIR/colors.zsh"
plug "$ZDOTDIR/exports.zsh"
plug "$ZDOTDIR/history.zsh"
plug "$ZDOTDIR/prompt.zsh"
plug "$ZDOTDIR/secrets.zsh"

# stowed
for file in "$ZDOTDIR/.zshrc.d/"*.zsh(N); do
  plug "$file"
done

# keybindings
bindkey '^ ' autosuggest-accept

# random options
unsetopt BEEP
setopt AUTO_CD
setopt GLOB_DOTS
setopt EXTENDED_GLOB
setopt NOMATCH
setopt INTERACTIVE_COMMENTS
zle_highlight=('paste:none')

# load completions
plug "$ZDOTDIR/completions.zsh"

eval "$(zoxide init zsh)"
