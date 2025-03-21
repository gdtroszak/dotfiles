# config
alias ea='$EDITOR $ZDOTDIR/aliases.zsh'
alias ra='source $ZDOTDIR/aliases.zsh'
alias erc='$EDITOR $ZDOTDIR/.zshrc'
alias rrc='source $ZDOTDIR/.zshrc'
alias eenv='$EDITOR ~/.zshenv'
alias renv='source ~/.zshenv'
 
# navigation
alias cd='z'
alias l='eza --group-directories-first --git -la'
alias lt='l -I .git --tree --level 1'
alias lt2='lt --level 2'
alias lt3='lt --level 3'
alias lt4='lt --level 4'

# brew
alias bb='brew bundle'

# git
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
alias gcmsg='git commit -m'
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

# tmux
alias ta='tmux attach -t'
alias tl='tmux ls'
alias ts='tmux new -s'
