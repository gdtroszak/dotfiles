# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
autoload -Uz plug

# source
plug "$ZDOTDIR/aliases.zsh"
plug "$ZDOTDIR/colors.zsh"
plug "$ZDOTDIR/exports.zsh"
plug "$ZDOTDIR/history.zsh"
plug "$ZDOTDIR/prompt.zsh"

# plugins
plug "agkozak/zsh-z"
plug "Aloxaf/fzf-tab"
plug "zap-zsh/fzf"
plug "zap-zsh/vim"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=blue'
ZSH_HIGHLIGHT_STYLES[path]='fg=blue'

# keybindings
bindkey '^ ' autosuggest-accept

# random options
unsetopt BEEP
setopt AUTO_CD
setopt GLOB_DOTS
setopt EXTENDED_GLOB
setopt NOMATCH
setopt INTERACTIVE_COMMENTS

# load completions
plug "$ZDOTDIR/completions.zsh"

zle_highlight=('paste:none')
