# hydrus-server-docker [![hydrus server version][hydrus-server-badge]][hydrus-server-version] [![Build status][travis-badge]][travis] [![Docker Hub build][docker-hub-badge]][docker-hub]

> Compiled version of [hydrus server][hydrus-server] running on Debian

This is a simple Debian-based Docker setup for running the compiled version of
[hydrus server][hydrus-server]. It was mainly created for making it easier to
run hydrus server together with [hydrusrv][hydrusrv], but can of course also be
used on its own.

The latest build runs [hydrus server version 335][hydrus-server-version].

## Table of contents

+ [Install](#install)
  + [Dependencies](#dependencies)
  + [Updating](#updating)
+ [Usage](#usage)
  + [Additional configuration when building](#additional-configuration-when-building)
    + [UID/GID](#uidgid)
+ [Caveats](#caveats)
+ [Donate](#donate)
+ [Maintainer](#maintainer)
+ [Contribute](#contribute)
+ [License](#license)

## Install

The easiest way to install is via [Docker Hub][docker-hub]:

```zsh
user@local:~$ docker pull mserajnik/hydrus-server-docker
```

By default, this will pull the latest build. To specify an image with a
specific version of hydrus server, provide the version number as tag, e.g.:

```zsh
user@local:~$ docker pull mserajnik/hydrus-server-docker:335
```

See [here][docker-hub-tags] for all the available version numbers/tags.

Alternatively, you can clone this repository and build the image yourself:

```zsh
user@local:~$ git clone https://github.com/mserajnik/hydrus-server-docker.git
user@local:~$ cd hydrus-server-docker
user@local:hydrus-server-docker$ docker build . -t hydrus-server-docker
```

### Dependencies

+ [Docker][docker]

### Updating

If you have installed via Docker Hub, just pull the updated image. Otherwise,
just pull from this repository and make a new build.

This repository follows [semantic versioning][semantic-versioning] and any
breaking changes that require additional attention will be released under a new
major version (e.g., `2.0.0`). Minor version updates (e.g., `1.1.0` or `1.2.0`)
are therefore always safe to simply install via the routine mentioned before.

When necessary, this section will be expanded with upgrade guides to new major
versions.

## Usage

First, you need to bind the exposed ports. This can be done automatically
using `-P` but it is recommended to bind them manually instead since having
changing ports every time you run a new container might be annoying when used
in combination with other services.

hydrus-server-docker exposes the following three ports by default:

+ `45870/tcp`
+ `45871/tcp`
+ `45872/tcp`

These are used to access the different services. `45870` is the default port
for the server administration service while `45871` and `45872` are used for
repositories. You will generally have two (one for tags and one for files), but
if you add more, you will also need to expose additional ports.

Per default, hydrus-server-docker stores its databases and media inside the
`/data` directory. It is highly recommended to create a named volume and mount
it to the same location if you wish to persist the data beyond the lifetime of
the container and/or access it on the host:

```zsh
user@local:~$ docker volume create hydrus-server-data
```

After creating your named volume, you can run the container. Here is a full
example with all the options mentioned above:

```zsh
user@local:~$ docker run -p 45870:45870 -p 45871:45871 -p 45872:45872 -v hydrus-server-data:/data -d mserajnik/hydrus-server-docker
```

### Additional configuration when building

#### UID/GID

By default, the user that owns the data and runs the server inside the
container has the UID `1000` and the GID `1000`. You can make a build providing
the arguments `HOST_USER_ID` and `HOST_GROUP_ID` to change these defaults.

This is useful if you want to access the data outside the container with a user
with different ID's without hassle. In such a case, `HOST_USER_ID` and
`HOST_GROUP_ID` should match the user that is going to access the data on the
host.

## Caveats

+ The image also includes the hydrus client due to the compiled releases always
  including both it and the server. This adds quite a bit of size to the image.
+ To upgrade hydrus server to a new version, you need to either make a new
  build yourself (when using `--no-cache` it will automatically download the
  latest version of hydrus server), upgrade it directly inside the running
  container or wait until I make a new release. I will try to keep up with
  every new hydrus release (usually weekly on Wednesdays), but cannot make any
  promises.

## Donate

If you like hydrus-server-docker and want to buy me a coffee, feel free to
donate via PayPal:

[![Donate via PayPal][paypal-image]][paypal]

Alternatively, you can also send me BTC:

![Donate BTC][btc-image]  
`13jRyroNn8QF4mbGZxKS6mR3PsxjYTsGsu`

Donations are unnecessary, but very much appreciated. :)

## Maintainer

[mserajnik][maintainer]

## Contribute

You are welcome to help out!

[Open an issue][issues] or submit a pull request.

## License

[MIT](LICENSE.md) © Michael Serajnik

[hydrus-server]: http://hydrusnetwork.github.io/hydrus/
[hydrusrv]: https://github.com/mserajnik/hydrusrv
[hydrus-server-version]: https://github.com/hydrusnetwork/hydrus/releases/tag/v335
[docker-hub]: https://hub.docker.com/r/mserajnik/hydrus-server-docker/
[docker-hub-tags]: https://hub.docker.com/r/mserajnik/hydrus-server-docker/tags/
[docker]: https://www.docker.com/
[semantic-versioning]: https://semver.org/

[hydrus-server-badge]: https://img.shields.io/badge/hydrus%20server-version%20335-blue.svg

[travis]: https://travis-ci.com/mserajnik/hydrus-server-docker
[travis-badge]: https://travis-ci.com/mserajnik/hydrus-server-docker.svg

[docker-hub-badge]: https://img.shields.io/docker/automated/mserajnik/hydrus-server-docker.svg

[paypal]: https://www.paypal.me/mserajnik
[paypal-image]: https://www.paypalobjects.com/webstatic/en_US/i/btn/png/blue-rect-paypal-26px.png
[btc-image]: https://mserajnik.at/external/btc.png

[maintainer]: https://github.com/mserajnik
[issues]: https://github.com/mserajnik/hydrus-server-docker/issues/new
