autoload -U colors && colors

setopt PROMPT_SUBST

git_prompt_info() {
  local branch status
  if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    branch=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null)

    if [[ -n $(git status --porcelain 2>/dev/null) ]]; then
      git_status=" %F{red}✗%f"
    else
      git_status=" %F{green}✔%f"
    fi

    echo " (%F{blue}$branch%f$git_status)"
  fi
}

set_prompt() {
  if [[ $EUID -eq 0 ]]; then
    export PROMPT="%B%F{red}%~$f$(git_prompt_info)"$'\n❯%b '
  else
    export PROMPT="%B%F{green}%~%f$(git_prompt_info)"$'\n❯%b '
  fi
}

# Apply the prompt function before each command
autoload -Uz add-zsh-hook
add-zsh-hook precmd set_prompt
