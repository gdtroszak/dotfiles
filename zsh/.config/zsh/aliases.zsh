# config
alias ea='$EDITOR $ZDOTDIR/aliases.zsh'
alias ra='source $ZDOTDIR/aliases.zsh'
alias erc='$EDITOR $ZDOTDIR/.zshrc'
alias rrc='source $ZDOTDIR/.zshrc'
alias eenv='$EDITOR ~/.zshenv'
alias renv='source ~/.zshenv'
 
# navigation
alias l='eza --group-directories-first --git -la'
alias lt='l -I .git --tree --level 1'
alias lt2='lt --level 2'
alias lt3='lt --level 3'
alias lt4='lt --level 4'

# notes
alias tn='$EDITOR ~/development/personal/notes/inbox/$(date +%F).md'
