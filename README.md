# Playground

Dockerized playground


## Setup

### Example app

- Clone this repository
- Move `example/app/` -> `app/`
- Move `example/database/` -> `database/`
- Run `./script/setup`
- Run `./script/server`
- Run `./script/console`
- Run `composer install` (inside Docker's CLI)

### Other apps

- Clone this repository
- Add other app to `app/`
- Add bootstrap sql files to -> `database/`
- Run `./script/setup`
- Run `./script/server`


## Usage

- To browse, open http://localhost:8888
- To use CLI, run `./script/console`
