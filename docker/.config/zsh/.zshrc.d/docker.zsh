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

# Ensure docker-buildx is installed
if ! is_installed docker-buildx; then
  echo "[docker.zsh] docker-buildx not found, installing..."
  brew install docker-buildx
fi

# Ensure docker-compose is installed
if ! is_installed docker-compose; then
  echo "[docker.zsh] docker-compose not found, installing..."
  brew install docker-compose
fi
