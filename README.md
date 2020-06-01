# Nextcloud Dockerized

This repository contains a docker-compose deployment to run Nextcloud in Docker on a single host.

- [Nextcloud Dockerized](#nextcloud-dockerized)
  - [Overview](#overview)
  - [Installation](#installation)
  - [Environment Variables](#environment-variables)
  - [Advanced Topics](#advanced-topics)
    - [Nextcloud Warnings](#nextcloud-warnings)
    - [Connect OnlyOffice](#connect-onlyoffice)
    - [Setup Preview Generator](#setup-preview-generator)
    - [Setup Draw.io](#setup-drawio)

---

## Overview

//TODO

![overview](docs/overview.svg)

## Installation

Clone the repository:

```sh
$ git clone https://github.com/cedrichopf/nextcloud-dockerized.git
Cloning into 'nextcloud-dockerized'...
```

Afterward, create a copy of the example configuration files:

```sh
# Nextcloud Configuration
$ cp example.env .env
# Custom Docker-Compose Configuration
$ cp override.example.yml docker-compose.override.yml
# Redis Configuration
$ cp config/redis.example.conf config/redis.conf
```

Configure the Nextcloud deployment by adapting the environment variables in the `.env` file:

```sh
$ vim nextcloud.env
```

Further information about the available environment variables can be found here: [Environment Variables](#environment-variables)

...

```sh
$ docker-compose pull
$ docker-compose up -d
```

## Environment Variables

The following table contains an overview of the environment variables which can be configured in the `nextcloud.env` file.

| Environment Variable | Example            | Description                                           |
| -------------------- | ------------------ | ----------------------------------------------------- |
| COMPOSE_PROJECT_NAME | `nextcloud`        | Project name for docker-compose                       |
| MYSQL_ROOT_PASSWORD  | `hmjGVBufBVsCy8Ut` | Root password of the MariaDB database                 |
| MYSQL_USER           | `nextcloud`        | Username of the database user                         |
| MYSQL_PASSWORD       | `s5xwMGLPh2qfDEVu` | Password of the database user                         |
| JWT_ENABLED          | `true | false`     | Enable JWT Auth for OnlyOffice                        |
| JWT_SECRET           | `qxd79yG4bGh2mn9w` | JWT Secret to connect to OnlyOffice                   |
| GENERATOR_ENABLED    | `true | false`     | Enable the Preview Generator Cron Job                 |
| GENERATOR_CRON       | `600`              | Time period to run the Preview Generator (in seconds) |

## Advanced Topics

//TODO

### Nextcloud Warnings

//TODO

### Connect OnlyOffice

//TODO

### Setup Preview Generator

//TODO

### Setup Draw.io

//TODO
