# dotfiles

My personal dotfiles.

## Usage

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/gdtroszak/dotfiles/main/bootstrap.sh)"
```

> ⚠️ This script currently supports **macOS only**.

It does the following.

- Clones this repo to `$HOME/.dotfiles`.
- Installs homebrew and some core packages.
- Ensures that all of the necessary
  [XDG](https://specifications.freedesktop.org/basedir-spec/latest/) directories
  are created.
- Stows the `zsh` and `tmux` configurations.
- Sources `.zshenv`, `.zprofile`, and `.zshrc`.

After running the script, `cd $HOME/.dotfiles` and run `stow [package]; rrc` to
install additional packages.
