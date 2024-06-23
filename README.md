# Dev Playground with Docker

The files from this repository can be added to any other project to run it inside Docker.

It is a base from phpdocker.io with some additions
- Non-root user inside Docker
- No issues with file ownership
- `.env` file for configuring Apache & MySQL
- Scripts to easily manage Docker (install, start, logs, console)
- Example code for connecting to the database

This repository works well together with [lode/linting-scripts](https://github.com/lode/linting-scripts).


## Install

To get started clone the repository and open a terminal inside the repository directory.

- Install: [Docker Desktop on Mac](https://docs.docker.com/desktop/install/mac-install/), [Docker Engine is enough for Linux](https://docs.docker.com/engine/install/ubuntu/)
    - Mac: no need to sign in with a Docker account when the installer asks you to.
    - Mac: under 'Settings' -> 'General' disable 'SBOM indexing'.
    - Mac: use `./script/*` for managing docker instead of the control panel of Docker Desktop for Mac.
    - Linux: follow [Docker post-installation](https://docs.docker.com/engine/install/linux-postinstall/) to manage docker without root.

- Run `./script/setup`
- Run `./script/server`


## Usage after first setup

- Start server: `./script/server`
- See [the script/ directory](/script/README.md) for more commands


## Connect to the database

Connect to the database from outside Docker:

- hostname: `localhost`
- port: see `SQL_PORT_EXTERNAL` in `docker.env`
- username/password: see values in `docker.env`

For managing databases:

- username: `root`
- password: `root-secret`


## To Do

- Upgrade mysql
- Add custom bashrc
- Setup XDebug
