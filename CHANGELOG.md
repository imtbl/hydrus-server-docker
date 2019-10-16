# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

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

[Unreleased]: https://github.com/mserajnik/hydrus-server-docker/compare/3.16.0...develop
[3.16.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.15.0...3.16.0
[3.15.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.14.0...3.15.0
[3.14.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.13.0...3.14.0
[3.13.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.12.0...3.13.0
[3.12.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.11.0...3.12.0
[3.11.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.10.0...3.11.0
[3.10.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.9.0...3.10.0
[3.9.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.8.0...3.9.0
[3.8.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.7.0...3.8.0
[3.7.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.6.0...3.7.0
[3.6.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.5.0...3.6.0
[3.5.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.4.0...3.5.0
[3.4.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.3.0...3.4.0
[3.3.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.2.0...3.3.0
[3.2.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.1.0...3.2.0
[3.1.0]: https://github.com/mserajnik/hydrus-server-docker/compare/3.0.0...3.1.0
[3.0.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.15.0...3.0.0
[2.15.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.14.0...2.15.0
[2.14.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.13.0...2.14.0
[2.13.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.12.0...2.13.0
[2.12.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.11.0...2.12.0
[2.11.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.10.0...2.11.0
[2.10.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.9.0...2.10.0
[2.9.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.8.0...2.9.0
[2.8.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.7.0...2.8.0
[2.7.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.6.0...2.7.0
[2.6.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.5.0...2.6.0
[2.5.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.4.0...2.5.0
[2.4.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.3.1...2.4.0
[2.3.1]: https://github.com/mserajnik/hydrus-server-docker/compare/2.3.0...2.3.1
[2.3.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.2.0...2.3.0
[2.2.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.1.0...2.2.0
[2.1.0]: https://github.com/mserajnik/hydrus-server-docker/compare/2.0.0...2.1.0
[2.0.0]: https://github.com/mserajnik/hydrus-server-docker/compare/1.4.1...2.0.0
[1.4.1]: https://github.com/mserajnik/hydrus-server-docker/compare/1.4.0...1.4.1
[1.4.0]: https://github.com/mserajnik/hydrus-server-docker/compare/1.3.0...1.4.0
[1.3.0]: https://github.com/mserajnik/hydrus-server-docker/compare/1.2.0...1.3.0
[1.2.0]: https://github.com/mserajnik/hydrus-server-docker/compare/1.1.0...1.2.0
[1.1.0]: https://github.com/mserajnik/hydrus-server-docker/compare/1.0.2...1.1.0
[1.0.2]: https://github.com/mserajnik/hydrus-server-docker/compare/1.0.1...1.0.2
[1.0.1]: https://github.com/mserajnik/hydrus-server-docker/compare/1.0.0...1.0.1
