# Docker devpi

This repository contains a Dockerfile for [devpi pypi server](http://doc.devpi.net/latest/).

You can use this container to speed up the `pip install` parts of your Docker builds.
This is done by adding an optional cache of your requirement python packages and speed up Docker.
The outcome is faster development without breaking builds.

## Getting started

### Installation

`docker pull metalstorm/devpi`

or

`docker-compose build`

### Running

Run the container in the background:

```bash
docker run -d --name devpi --publish 3141:3141 --restart always m3talstorm/devpi
```

*Alternatively, you can use the sample [docker-compose.yml](docker-compose.yml)
file to start the container using [Docker
Compose](https://docs.docker.com/compose/)*


### Client side usage

Copy the provided pip.conf wholesale, or modify your current one to match:

```bash
mkdir -p ~/.pip
cp ./pip.conf ~/.pip/pip.conf
```
