# docker-dev

Dockerfile for my developments.

The locale and time zone are set for the Japanese environment.

## Docker Hub

https://hub.docker.com/repository/docker/junionorg/dev

## Installation

```bash
$ docker pull junionorg/dev
```

## Usage

```bash
# As a background container
$ docker run -dit --name CONTAINER junionorg/dev
$ docker exec -it CONTAINER

# As a temporary container
$ docker run --rm -it CONTAINER junionorg/dev
```
