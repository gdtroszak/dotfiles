#! /bin/sh

install_fzf_tab () {
  install_dir=${ZSH_CUSTOM:-~/.config/zsh/custom}/plugins/fzf-tab
  (gh repo clone Aloxaf/fzf-tab $install_dir &>/dev/null) && true
  if [ $? -ne 0 ]
  then
    echo -e "$info fzf-tab already installed at: $install_dir"
  fi
}

install_omz () {
  ZSH=~/.local/share/oh-my-zsh \
  RUNZSH=no \
  KEEP_ZSHRC=yes \
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # OMZ puts this here because the installer doesn't look for zshrc files elsewhere.
  rm ~/.zshrc
}

# Login to GitHub.
gh auth login

# Install OMZ and some additional plugins.
install_fzf_tab

if ! install_omz
then
  echo "OMZ already installed."
  exit 0
fi
