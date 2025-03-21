# Ensure necessary directories exist
mkdir -p \
  "$XDG_CONFIG_HOME" \
  "$XDG_CACHE_HOME" \
  "$XDG_DATA_HOME" \
  "$XDG_STATE_HOME/less" \
  "$ZDOTDIR" \
  "$_ZO_DATA_DIR"

[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
autoload -Uz plug

# plugins
plug "Aloxaf/fzf-tab"
plug "zap-zsh/fzf"
plug "zap-zsh/vim"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"


# source
plug "$ZDOTDIR/aliases.zsh"
plug "$ZDOTDIR/colors.zsh"
plug "$ZDOTDIR/exports.zsh"
plug "$ZDOTDIR/history.zsh"
plug "$ZDOTDIR/prompt.zsh"
plug "$ZDOTDIR/secrets.zsh"

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

