# docker-dev

Dockerfile for my developments.

The locale and time zone are set for the Japanese environment.

## Docker Hub

TBD

## Installation

```bash
$ docker pull junionorg/dev
```

## Usage

```bash
# As background container
$ docker run -dit --name CONTAINER junionorg/dev
$ docker exec -it CONTAINER

# As temporary container
$ docker run --rm -it CONTAINER junionorg/dev
```
