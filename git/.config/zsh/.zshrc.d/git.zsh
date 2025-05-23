# Ensure gh is installed
if ! is_installed gh; then
  echo "[git.zsh] gh not found, installing..."
  brew install gh
fi

# Aliases
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch --delete'
alias gbD='git branch --delete --force'
alias gbm='git branch --move'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcm='git checkout main'
alias gcmsg='git commit -S -m'
alias gf='git fetch'
alias glo='git log --oneline --decorate'
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias gm='git merge'
alias gms='git merge --squash'
alias gmff='git merge --ff-only'
alias gl='git pull'
alias gp='git push'
alias grbi='git rebase --interactive'
alias gst='git status'
