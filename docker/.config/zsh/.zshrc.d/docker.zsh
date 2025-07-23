export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

# Ensure desktop is installed
if ! brew list --cask docker-desktop >/dev/null 2>&1; then
  echo "[docker.zsh] docker-desktop not found, installing..."
  brew install docker-desktop
fi
