# A Simple nodejs server shipped into a docker container

A Simple nodejs server shipped into a docker container

Based on the official images:
* [debian](https://hub.docker.com/_/debian/)

# Requirements
1. [Docker] [Docker](http://docker.io).

## Setup

1. Install [Docker](http://docker.io).
2. Clone this repository

# Usage

```bash
$ git clone https://github.com/sergouniotis/tsnodeserver.git
```

```bash
$ cd tsnodeserver && docker build -t tsergouniotis/tsnodeserver .
```

You can also choose to run it in background (detached mode):

```bash
$ docker run --name tsnodeserver -p 80:8000 tsergouniotis/tsnodeserver
```
