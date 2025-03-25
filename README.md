# dotfiles

My personal dotfiles.

## Usage

This will only work on macOS for now.

1. Clone this repo to your home directory.
2. Navigate into the repo.
3. Run `./bootstrap.sh`. This does a few things:
   - Installs homebrew and some necessary packages for the bare-minimum zsh setup.
   - Ensures that all of the necessary [XDG](https://specifications.freedesktop.org/basedir-spec/latest/)
     directories are created.
   - Stows the `zsh` and `tmux` configurations.
   - Sources `.zshenv`, `.zprofile`, and `.zshrc`.
4. Run `stow [whatever]` to use additional configurations.
