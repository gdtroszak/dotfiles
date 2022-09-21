# Adds completions for pipx.

if (( ! $+commands[pipx] )); then
  return
fi

eval "$(register-python-argcomplete pipx)"
