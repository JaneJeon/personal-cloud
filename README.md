# Personal Cloud

Persoal Cloud for personal workloads.

## Prerequisites

### `nvm`

node.js is needed for installing and running DevX packages.

The version of node.js is specified by `.nvmrc`, and if you have the shell hook setup, it should automatically switch to the right version.

Once the right node version is installed and used, you can run `npm ci` to install the DevX packages.

### `husky`

To allow for GUIs like the VS Code's git extension to work with `husky` and load the shell "as it would" on your own terminal (parity of DevX is a large part of the goal), create the following file in `~/.config/husky/init.sh`:

```sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
```

### `swarp`

You can use `swarp secrets refresh` to 'render' all of the `.env.template` files into `.env` files.

The `.env.template` files are safe to read, as they do not contain the secret values themselves.

The `.env` files rendered by `swarp` are loaded by `.envrc` + `direnv`.

### `direnv`

When first working with the repository, run `swarp direnv allow` to allow the loading of environment variables via `.envrc` files (and you'll need to run this command after changing `.envrc` files as well).

Afterwards, you shouldn't need to run `direnv allow` for changing the template values and 'rendering' them (on render, the changed environment variable values will get picked up automatically, thanks to `watch_file .env`).

### `gcloud`

For local development, you'll need `gcloud` CLI installed and configured via `gcloud auth application-default login`.

The Google Cloud project will be automatically selected via the top-level `.env.template`'s `CLOUDSDK_CORE_PROJECT` variable.

## General Guidance

- No bespoke scripts for testing.
