# playground-retry


## To Do

- Add custom bashrc
- Setup XDebug


## Install

### Linux

- [Docker 25.0.4 or higher](https://docs.docker.com/engine/install/ubuntu/)
- You must add your user to the `docker` group. See [Linux postinstall](https://docs.docker.com/engine/install/linux-postinstall/).

### OSX

- OSX 14.4 (Sonoma)
- Git (Can be [installed](https://git-scm.com/download/mac) with [brew](https://brew.sh/) or as part of XCode).
- [Docker for Mac 4.28.0 or higher](https://docs.docker.com/docker-for-mac/install/).
    - No need to sign in with a Docker account when the installer asks you to.
- Under 'Settings' -> 'General' disable 'SBOM indexing'.

Note: use `./script/*` for managing docker instead of the control panel of Docker Desktop for Mac.


## Setup & Usage

See [script/README.md](/script/README.md).

Note: the `docker/README.md` isn't actual on port numbers and file permissions.


## Connecting to database

See configuration in `.env.dist`, use `SQL_PORT_EXTERNAL`.
