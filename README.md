# dotfiles

My personal dotfiles.

## Usage

1. Clone this repo to your home directory.
2. Install [GNU Stow](https://www.gnu.org/software/stow/).
3. Navigate into the repo.
4. Run `./bootstrap.sh`. This will ensure that all of the necessary [XDG](https://specifications.freedesktop.org/basedir-spec/latest/)
   directories are created and stow the `zsh` configuration.
5. Run `stow [whatever]` to use additional configurations.
