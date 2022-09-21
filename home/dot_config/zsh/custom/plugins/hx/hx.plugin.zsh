# Adds completions for helix.

if (( ! $+commands[hx] )); then
  return
fi

# If the completion file doesn't exist yet, we need to autoload it and
# bind it to `hx`. Otherwise, compinit will have already done that.
if [[ ! -f "$ZSH_CACHE_DIR/completions/_hx" ]]; then
  typeset -g -A _comps
  autoload -Uz _hx
  _comps[hx]=_hx
fi

ln -sf $SRC_HOME/helix/contrib/completion/hx.zsh $ZSH_CACHE_DIR/completions/_hx
