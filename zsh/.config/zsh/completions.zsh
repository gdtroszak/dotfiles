# Remove homebrew git's completions because zsh's are better
rm -f $HOMEBREW_PREFIX/share/zsh/site-functions/_git

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
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'


# Include hidden files in completions
_comp_options+=(globdots)
