# GPG

## Usage

```sh
stow gpg
source $ZDOTDIR/.zshrc
```

## Features

- Sets `GNUPGHOME` to `$XDG_DATA_HOME/gnupg`.
- Adds gpg.conf and gpg-agent.conf under version control.
- Exports `GPG_TTY` so GPG prompts work in terminals.
- Documents how to generate a GPG key + subkeys,
  export them,
  and import subkeys on other machines.

## Key Setup

### Generate a master key

```sh
gpg --full-generate-key
```

Choose the defaults.

I recommend making your key valid for 1 year.

Provide a passphrase.
Ideally one that's sufficiently complicated,
yet memorable.

Note the key ID.

This generated your master key
and an encryption subkey.

### Create a GPG signing key

```sh
gpg --edit-key [key ID]
```

At the `gpg>` prompt type `addKey` and hit enter.

Pick option `10`.

You should now have a second subkey for signing.

At the `gpg>` prompt type `save` and hit enter.

### Backup

```sh
gpg --output public.gpg --export [key ID]
gpg --output secret.gpg --export-secret-keys [key ID]
gpg --output secsub.gpg --export-secret-subkeys [key ID]
```

Copy these files to secure offline storage.

### Remove the secret keys from the GPG instance

```sh
gpg --delete-secret-keys [key ID]
```

### Re-import the secret subkeys

```sh
gpg --import secsub.gpg
```

You can verify that the secret subkeys are there by running the following command.

```sh
gpg --list-secret-keys
```

The first line should have a `sec#` on it.
The `#` means only secret subkeys exist.

### Delete the 3 exported keys from the local machine

```sh
rm public.gpg secret.gpg secsub.gpg
```

They should now only exist on your secure offline storage.
