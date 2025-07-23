export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

# Ensure colima is installed
if ! is_installed colima; then
  echo "[docker.zsh] colima not found, installing..."
  brew install colima
fi

# Ensure docker is installed
if ! is_installed docker; then
  echo "[docker.zsh] docker not found, installing..."
  brew install docker
fi
