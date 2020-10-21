# hydrus-server-docker [![hydrus server version][hydrus-server-badge]][hydrus-server-version] [![Build status][travis-badge]][travis] [![Docker Hub build][docker-hub-badge]][docker-hub]

> [hydrus server][hydrus-server] running on Debian

This is a simple Debian-based Docker setup for running
[hydrus server][hydrus-server] from source.

The latest build runs [hydrus server version 414][hydrus-server-version].

Due to time constraints and the fact that changes to hydrus server are
infrequent, a new release of this Docker setup is only made roughly
every fourth hydrus release. This comes out to about one release per month.
Exceptions may be made in particular instances that warrant a release outside
of this schedule (e.g., important changes to hydrus server).

## Table of contents

+ [Install](#install)
  + [Dependencies](#dependencies)
  + [Updating](#updating)
    + [Upgrading from 3.x to 4.x](#upgrading-from-3x-to-4x)
    + [Upgrading from 2.x to 3.x](#upgrading-from-2x-to-3x)
    + [Upgrading from 1.x to 2.x](#upgrading-from-1x-to-2x)
+ [Usage](#usage)
  + [Ports](#ports)
  + [Storage](#storage)
+ [Maintainer](#maintainer)
+ [Contribute](#contribute)
+ [License](#license)

## Install

The easiest way to install is via [Docker Hub][docker-hub]:

```zsh
user@local:~$ docker pull mtbl/hydrus-server-docker
```

By default, this will pull the latest build. To specify an image with a
specific version of hydrus server, provide the version number as tag, e.g.:

```zsh
user@local:~$ docker pull mtbl/hydrus-server-docker:414
```

Alternatively, you can also build the image yourself:

```zsh
user@local:~$ git clone --recurse-submodules https://github.com/imtbl/hydrus-server-docker.git
user@local:~$ cd hydrus-server-docker
user@local:hydrus-server-docker$ docker build . -t hydrus-server-docker
```

The user that is used inside the container has UID `1000` and GID `1000` by
default. You can adjust this (e.g., to match your host UID/GID) by providing
the arguments `USER_ID` and `GROUP_ID` when making a build.

### Dependencies

+ [Docker][docker]

### Updating

If you have installed via Docker Hub, just pull the updated image. Otherwise,
pull from this repository and make a new build.

This repository follows [semantic versioning][semantic-versioning] and any
breaking changes that require additional attention will be released under a new
major version (e.g., `2.0.0`). Minor version updates (e.g., `1.1.0` or `1.2.0`)
are therefore always safe to simply install via the routine mentioned before.

When necessary, this section will be expanded with upgrade guides to new major
versions.

#### Upgrading from 3.x to 4.x

Upgrading from `3.x` to `4.x` can be done via pulling the updated image from
Docker Hub or building it yourself and requires no further manual changes.

`4.0.0` has introduced no breaking changes and merely reflects the switch to a
new license (AGPLv3).

#### Upgrading from 2.x to 3.x

Upgrading from `2.x` to `3.x` can be done via pulling the updated image from
Docker Hub or building it yourself and requires no further manual changes.

Due to the introduction of OpenCV to hydrus server (which is hard to build on
Alpine), the Docker image is now based on Debian instead of Alpine.

#### Upgrading from 1.x to 2.x

Upgrading from `1.x` to `2.x` can be done via pulling the updated image from
Docker Hub or building it yourself and requires no further manual changes.

Since there have been issues with running the pre-compiled version of hydrus
server 335+ (which made the switch to Python 3) on the previous Docker setup,
starting with `2.0.0`, the Docker image is now based on Alpine (instead of
Debian) and runs hydrus server from source.

This approximately halves the resulting image size while at the same time
making it easier to adapt for future changes/dependencies.

## Usage

### Ports

First, you need to bind the exposed ports. This can be done automatically using
`-P` but it is recommended to bind them manually instead since having changing
ports every time you run a new container might be annoying when used in
combination with other services.

hydrus-server-docker exposes the following three ports by default:

+ `45870/tcp`
+ `45871/tcp`
+ `45872/tcp`

These are used to access the different services. `45870` is the default port
for the server administration service while `45871` and `45872` are used for
repositories. You will generally have two (one for tags and one for files), but
if you add more, you will also need to expose additional ports.

### Storage

Per default, hydrus-server-docker stores its databases and media inside the
`/data` directory which is a mount point that is persisted as a volume. A new
volume will be created every time a container is created, making it less ideal
as a long-term solution. Instead, you should create a named volume yourself and
mount that over it:

```zsh
user@local:~$ docker volume create hydrus-server-data
```

After creating your named volume, you can run the container. Here is a full
example with all the options mentioned above:

```zsh
user@local:~$ docker run -p 45870:45870 -p 45871:45871 -p 45872:45872 -v hydrus-server-data:/data -d mtbl/hydrus-server-docker
```

Specifying the same named volume every time a container is created gives each
of these instances access to the same persisted data.

Of course, using a bind mount instead of a named volume is also possible but
for performance reasons only recommended if you need easy access to the data on
the host machine.

## Maintainer

[imtbl][maintainer]

## Contribute

You are welcome to help out!

[Open an issue][issues] or submit a pull request.

## License

[AGPLv3](LICENSE) © imtbl

[hydrus-server]: http://hydrusnetwork.github.io/hydrus/
[hydrus-server-version]: https://github.com/hydrusnetwork/hydrus/releases/tag/v414
[docker-hub]: https://hub.docker.com/r/mtbl/hydrus-server-docker/
[docker-hub-tags]: https://hub.docker.com/r/mtbl/hydrus-server-docker/tags/
[docker]: https://www.docker.com/
[semantic-versioning]: https://semver.org/

[hydrus-server-badge]: https://img.shields.io/badge/hydrus%20server-version%20414-blue.svg

[travis]: https://travis-ci.com/imtbl/hydrus-server-docker
[travis-badge]: https://travis-ci.com/imtbl/hydrus-server-docker.svg

[docker-hub-badge]: https://img.shields.io/docker/cloud/automated/mtbl/hydrus-server-docker.svg

[maintainer]: https://github.com/imtbl
[issues]: https://github.com/imtbl/hydrus-server-docker/issues/new
