# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

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

[Unreleased]: https://github.com/mserajnik/hydrus-server-docker/compare/2.4.0...develop
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
