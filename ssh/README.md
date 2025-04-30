# SSH

## Usage

```sh
stow ssh; rrc
```

## Features

- Adds `~/.ssh/config`.
- Ensures the `ssh-agent` is running.
- Documents how to create a new SSH key and add it to the agent.

## Key Setup

```sh
# Replace keyname with whatever you want.
keyname=shared

ssh-keygen -t ed25519 -f ~/.ssh/$keyname -C "$(whoami)@$(hostname)"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/$keyname
```
