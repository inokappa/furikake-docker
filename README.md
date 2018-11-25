# furikake-docker [![Build Status](https://travis-ci.org/inokappa/furikake-docker.svg?branch=master)](https://travis-ci.org/inokappa/furikake-docker)

[furikake](https://github.com/inokappa/furikake) in docker.

## Required

- [docker](https://docs.docker.com/)
- [docker-compose](https://docs.docker.com/compose/)

## Usage

### Set AWS credentials and region

Set environment variable `AWS_PROFILE`, `AWS_REGION`.

```sh
$ export AWS_PROFILE=your-profile
$ export AWS_REGION=ap-northeast-1
```

### Build

```sh
$ docker-compose build
```

### Run furikake setup

```sh
$ docker-compose run --rm furikake setup
```

You may have to remove addons directory to avoid unwanted.

### Edit .furikake.yml

```sh
$ vim .furikake.yml
```

### Run furikake show

```sh
$ docker-compose run --rm furikake show
```

### Run furikake publish

```sh
$ docker-compose run --rm furikake publish
```

### Run furikake monitor

```sh
$ docker-compose up -d
```

If you want to modify the value of `interval`, please modify docker-compose.yml as follows.

```yaml
...
      command: [ "monitor", "--inverval=10" ]
...
```
