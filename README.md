# LLLIVS

### Laravel + Lagoon + Lando + InertiaJS + Vue + SASS

A minimal (relatively non-opinionated) project boilerplate

## Dev dependencies

* Docker
* Lando

## Getting started

* Clone
* Make storage dirs
```shell
mkdir -p storage/framework/{sessions,views} && \
    mkdir -p storage/framework/cache/data && \
    mkdir -p storage/app/public && \
    mkdir -p storage/logs && \
    chmod -R 777 /home/.composer && \
    ln -s storage/app/public public/storage
```
* Find / Replace `laravel-project` and `laravel_project` with `your-project-name`
* Copy env file
```shell
cp .env.example .env
```
* Start `lando start`
* Generate key
```shell
lando artisan key:generate
```  
