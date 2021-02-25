# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [4.4.0] - 2021-02-25

### Changed

+ Updated hydrus server version
+ Updated dependencies

## [4.3.0] - 2021-01-21

### Changed

+ Updated hydrus server version
+ Updated dependencies

## [4.2.0] - 2020-12-09

### Changed

+ Based Docker image on Python 3.9
+ Updated hydrus server version
+ Updated dependencies

## [4.1.0] - 2020-11-11

### Changed

+ Updated hydrus server version
+ Updated dependencies

## [4.0.0] - 2020-10-22

### Changed

+ Updated hydrus server version
+ Updated dependencies
+ Switched to AGPLv3

## [3.29.0] - 2020-09-07

### Changed

+ Updated hydrus server version
+ Updated dependencies

## [3.28.0] - 2020-06-14

### Changed

+ Updated hydrus server version

## [3.27.0] - 2020-04-16

### Changed

+ Updated hydrus server version
+ Updated dependencies

## [3.26.0] - 2020-03-17

### Changed

+ Updated hydrus server version
+ Updated dependencies

## [3.25.0] - 2020-02-13

### Changed

+ Updated hydrus server version
+ Updated dependencies

## [3.24.0] - 2020-01-16

### Changed

+ Updated hydrus server version
+ Updated dependencies

## [3.23.1] - 2020-01-12

### Fixed

+ Removed unnecessary `gosu` package from Docker image builds

## [3.23.0] - 2020-01-12

### Removed

+ Removed the ability to define custom UID and GID for the Docker container at
  container creation due to several issues arising from that

## [3.22.0] - 2020-01-05

### Added

+ Added the ability to define custom UID and GID for the Docker container at
  container creation

## [3.21.0] - 2020-01-02

### Changed

+ Updated dependencies
+ Updated hydrus server version

## [3.20.0] - 2019-12-20

### Changed

+ Updated hydrus server version

## [3.19.0] - 2019-11-28

### Changed

+ Updated hydrus server version
+ Updated Python to version 3.8

## [3.18.0] - 2019-11-14

### Changed

+ Updated hydrus server version

## [3.17.0] - 2019-10-16

### Changed

+ Updated hydrus server version

## [3.16.0] - 2019-10-16

### Changed

+ Updated hydrus server version

## [3.15.0] - 2019-10-08

### Changed

+ Updated hydrus server version

## [3.14.0] - 2019-09-29

### Changed

+ Updated hydrus server version

## [3.13.0] - 2019-09-17

### Changed

+ Updated hydrus server version

## [3.12.0] - 2019-09-06

### Changed

+ Updated hydrus server version

## [3.11.0] - 2019-08-25

### Changed

+ Updated hydrus server version

## [3.10.0] - 2019-08-19

### Changed

+ Decreased Docker image size
+ Updated hydrus server version

## [3.9.0] - 2019-08-08

### Changed

+ Updated hydrus server version

## [3.8.0] - 2019-08-03

### Changed

+ Updated hydrus server version

## [3.7.0] - 2019-07-28

### Changed

+ Updated hydrus server version
+ Updated base image to Debian Buster

## [3.6.0] - 2019-07-05

### Changed

+ Updated hydrus server version

## [3.5.0] - 2019-07-05

### Changed

+ Updated hydrus server version

## [3.4.0] - 2019-06-16

### Changed

+ Updated hydrus server version

## [3.3.0] - 2019-05-31

### Changed

+ Updated hydrus server version

## [3.2.0] - 2019-05-23

### Changed

+ Updated hydrus server version

## [3.1.0] - 2019-05-18

### Changed

+ Updated hydrus server version

## [3.0.0] - 2019-05-18

### Changed

+ Switched base image to Debian to make usage of OpenCV feasible
+ Added OpenCV

## [2.15.0] - 2019-05-11

### Changed

+ Updated hydrus server version

## [2.14.0] - 2019-05-02

### Changed

+ Updated hydrus server version

## [2.13.0] - 2019-04-25

### Changed

+ Updated hydrus server version

## [2.12.0] - 2019-04-21

### Changed

+ Updated hydrus server version

## [2.11.0] - 2019-04-13

### Changed

+ Updated hydrus server version

## [2.10.0] - 2019-04-04

### Changed

+ Updated hydrus server version

## [2.9.0] - 2019-04-04

### Changed

+ Updated hydrus server version

## [2.8.0] - 2019-03-24

### Added

+ Added default volume

### Changed

+ Updated hydrus server version

## [2.7.0] - 2019-03-14

### Changed

+ Updated hydrus server version

## [2.6.0] - 2019-03-07

### Changed

+ Updated hydrus server version

## [2.5.0] - 2019-03-04

### Changed

+ Added container healthchecks
+ Updated hydrus server version

## [2.4.0] - 2019-02-15

### Changed

+ Excluded `.git` directories from Docker image
+ Updated hydrus server version

## [2.3.1] - 2019-02-10

### Fixed

+ Fixed `git clone` instruction to include the hydrus server submodule

## [2.3.0] - 2019-02-10

### Changed

+ Updated hydrus server version
+ Included hydrus server as a Git submodule instead of downloading the sources
  when building

## [2.2.0] - 2019-02-01

### Changed

+ Updated hydrus server version

## [2.1.0] - 2019-01-24

### Changed

+ Updated hydrus server version

## [2.0.0] - 2019-01-20

### Changed

+ Updated hydrus server version
+ Updated setup to run hydrus server from source (instead of the pre-compiled
  executable)
+ Switched base image to Alpine (instead of Debian)

## [1.4.1] - 2019-01-13

### Fixed

+ Rolled hydrus server version back to 334 due to issues with 335

## [1.4.0] - 2019-01-13

### Changed

+ Updated hydrus server version

## [1.3.0] - 2018-12-12

### Changed

+ Updated hydrus server version

## [1.2.0] - 2018-12-06

### Changed

+ Updated hydrus server version
+ Reduced image size

## [1.1.0] - 2018-12-02

### Changed

+ Reduced image size
+ Changed terminology (for aesthetic reasons)

## [1.0.2] - 2018-11-30

### Fixed

+ Fixed errors in readme

## [1.0.1] - 2018-11-29

### Fixed

+ Removed unnecessary `VOLUME` declaration in Dockerfile
  + see [this article](https://boxboat.com/2017/01/23/volumes-and-dockerfiles-dont-mix/)

## 1.0.0 - 2018-11-29

### Added

+ Initial release

[Unreleased]: https://github.com/imtbl/hydrus-server-docker/compare/4.4.0...develop
[4.4.0]: https://github.com/imtbl/hydrus-server-docker/compare/4.3.0...4.4.0
[4.3.0]: https://github.com/imtbl/hydrus-server-docker/compare/4.2.0...4.3.0
[4.2.0]: https://github.com/imtbl/hydrus-server-docker/compare/4.1.0...4.2.0
[4.1.0]: https://github.com/imtbl/hydrus-server-docker/compare/4.0.0...4.1.0
[4.0.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.29.0...4.0.0
[3.29.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.28.0...3.29.0
[3.28.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.27.0...3.28.0
[3.27.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.26.0...3.27.0
[3.26.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.25.0...3.26.0
[3.25.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.24.0...3.25.0
[3.24.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.23.1...3.24.0
[3.23.1]: https://github.com/imtbl/hydrus-server-docker/compare/3.23.0...3.23.1
[3.23.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.22.0...3.23.0
[3.22.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.21.0...3.22.0
[3.21.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.20.0...3.21.0
[3.20.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.19.0...3.20.0
[3.19.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.18.0...3.19.0
[3.18.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.17.0...3.18.0
[3.17.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.16.0...3.17.0
[3.16.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.15.0...3.16.0
[3.15.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.14.0...3.15.0
[3.14.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.13.0...3.14.0
[3.13.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.12.0...3.13.0
[3.12.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.11.0...3.12.0
[3.11.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.10.0...3.11.0
[3.10.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.9.0...3.10.0
[3.9.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.8.0...3.9.0
[3.8.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.7.0...3.8.0
[3.7.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.6.0...3.7.0
[3.6.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.5.0...3.6.0
[3.5.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.4.0...3.5.0
[3.4.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.3.0...3.4.0
[3.3.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.2.0...3.3.0
[3.2.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.1.0...3.2.0
[3.1.0]: https://github.com/imtbl/hydrus-server-docker/compare/3.0.0...3.1.0
[3.0.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.15.0...3.0.0
[2.15.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.14.0...2.15.0
[2.14.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.13.0...2.14.0
[2.13.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.12.0...2.13.0
[2.12.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.11.0...2.12.0
[2.11.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.10.0...2.11.0
[2.10.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.9.0...2.10.0
[2.9.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.8.0...2.9.0
[2.8.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.7.0...2.8.0
[2.7.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.6.0...2.7.0
[2.6.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.5.0...2.6.0
[2.5.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.4.0...2.5.0
[2.4.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.3.1...2.4.0
[2.3.1]: https://github.com/imtbl/hydrus-server-docker/compare/2.3.0...2.3.1
[2.3.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.2.0...2.3.0
[2.2.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.1.0...2.2.0
[2.1.0]: https://github.com/imtbl/hydrus-server-docker/compare/2.0.0...2.1.0
[2.0.0]: https://github.com/imtbl/hydrus-server-docker/compare/1.4.1...2.0.0
[1.4.1]: https://github.com/imtbl/hydrus-server-docker/compare/1.4.0...1.4.1
[1.4.0]: https://github.com/imtbl/hydrus-server-docker/compare/1.3.0...1.4.0
[1.3.0]: https://github.com/imtbl/hydrus-server-docker/compare/1.2.0...1.3.0
[1.2.0]: https://github.com/imtbl/hydrus-server-docker/compare/1.1.0...1.2.0
[1.1.0]: https://github.com/imtbl/hydrus-server-docker/compare/1.0.2...1.1.0
[1.0.2]: https://github.com/imtbl/hydrus-server-docker/compare/1.0.1...1.0.2
[1.0.1]: https://github.com/imtbl/hydrus-server-docker/compare/1.0.0...1.0.1
