alias zshconfig="hx $ZDOTDIR/.zshrc"

# Function to run the "global" npm.
function npm-global() {
  cd $NPM_GLOBAL_DIR
  npm "$@"
  cd -
}
# Use the existing npm completions for the function as well.
compdef _npm_completion npm-global
