# dotfiles
Personal dotfiles managed with [chezmoi](https://www.chezmoi.io).


## Install

Install `curl`, run

```bash
sh -c "$(curl -fsLS https://chezmoi.io/get)" -- init --apply gdtroszak
```

then follow the prompts.


## Usage

- Use the `bootstrap-*` scripts to install languages.
- Use the `install-*` scripts to install programs. These scripts may assume
  that a particular `bootstrap-*` script has been run.
