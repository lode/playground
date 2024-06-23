# Scripts to help with common tasks

Inspired by https://github.com/github/scripts-to-rule-them-all.


## First run

- `./script/setup`
- `./script/server`

See further instructions in [README.md](/README.md).


## Starting / stopping

- `./script/server`: start Docker/Symfony server to use the website or Docker console
- `./script/stop-server`: stop Docker/Symfony server
- `./script/logs`: see logs of all Docker services or Symfony server


## Update

Run after pulling/merging git with changes from others (e.g. `git pull` on `master`).
This will updates composer packages and migrates the database.

- `./script/update`


## Console

- `./script/symfony <command>`: run a Symfony bin/console command
- `./script/console <command>`: run a single command in Docker
- `./script/console`: get a bash into Docker
- `./script/console database`: get a bash into Docker's database container
- `./script/console root`: get a bash _as root_ in Docker, for installing OS packages


## Restart

- `./script/reset`: remove and setup Docker again
