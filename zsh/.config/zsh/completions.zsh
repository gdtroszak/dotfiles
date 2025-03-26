# Remove homebrew git's completions because zsh's are better
rm -f $HOMEBREW_PREFIX/share/zsh/site-functions/_git

# User completion directory
zsh_completion_dir="${ZDOTDIR:-$HOME/.config/zsh}/completions"
mkdir -p "$zsh_completion_dir"

# Add user completions to fpath
fpath=($zsh_completion_dir $fpath)

# Load completion system
autoload -U compinit
compinit -d "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump"

# Enable advanced completion features
zmodload zsh/complist  # Enables interactive completion selection

# Configure completion options
setopt MENU_COMPLETE  # Automatically highlight first element in menu

# Use completion caching for faster performance
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompcache"

# Completion menu settings
zstyle ':completion:*' menu no
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:git-checkout:*' sort false

# fzf-tab styling needs to be configured independent of fzf
zstyle ':fzf-tab:*' fzf-flags --color=gutter:-1 --border --height=~50%

# Include hidden files in completions
_comp_options+=(globdots)
