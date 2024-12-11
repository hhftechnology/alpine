# Alpine Linux in Docker

[![Docker Automated build](https://img.shields.io/docker/automated/hhftechnology/alpine.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/hhftechnology/alpine/)
[![Docker Pulls](https://img.shields.io/docker/pulls/hhftechnology/alpine.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/hhftechnology/alpine/)
[![Docker Stars](https://img.shields.io/docker/stars/hhftechnology/alpine.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/hhftechnology/alpine/)

[![GitHub release](https://img.shields.io/github/v/tag/hhftechnology/alpine?style=flat-square)](https://github.com/hhftechnology/alpine/releases/latest)
[![Build Status](https://img.shields.io/github/actions/workflow/status/hhftechnology/alpine/main.yml?branch=main&style=flat-square)](https://github.com/hhftechnology/alpine/actions)

[![Alpine Version](https://img.shields.io/badge/Alpine%20version-v3.20.3-green.svg?style=for-the-badge&logo=alpine-linux)](https://alpinelinux.org/)

This Container image [(hhftechnology/alpine)](https://hub.docker.com/r/hhftechnology/alpine/) is based on the minimal [Alpine Linux](https://alpinelinux.org/).

Currently tracking:
* Alpine 3.5, 3.6, 3.7, 3.8, 3.9, 3.10, 3.11, 3.12, 3.13, 3.14, 3.15, 3.16, 3.17, 3.18, 3.19, 3.20, 3.21, and edge

This Container image is the base Alpine Linux. For more info on versions & support see [Releases](https://wiki.alpinelinux.org/wiki/Alpine_Linux:Releases)

----

## Table of Contents

- [What is Alpine Linux?](#🏔️-what-is-alpine-linux)
- [Features](#✨-features)
- [Prerequisites and Assumptions](#prerequisites-and-assumptions)
- [Installation](#installation)
- [Architectures](#🏗️-architectures)
- [Tags](#🏷️-tags)
- [Layers & Sizes](#📏-layers--sizes)
- [Configuration](#configuration)
- [How to use this image](#🚀-how-to-use-this-image)
- [Image contents & Vulnerability analysis](#🔍-image-contents--vulnerability-analysis)
- [Source Repositories](#📚-source-repositories)
- [Container Registries](#🐳-container-registries)
- [Links](#🔗-links)
- [Support](#💰-support)

## 🏔️ What is Alpine Linux?

Alpine Linux is a Linux distribution built around musl libc and BusyBox. The image is only 5 MB in size and has access to a package repository that is much more complete than other BusyBox based images. This makes Alpine Linux a great image base for utilities and even production applications.

## ✨ Features

* Minimal size only, minimal layers
* Memory usage is minimal on a simple install
* [s6 overlay](https://github.com/just-containers/s6-overlay) enabled for PID 1 init capabilities
* [zabbix-agent](https://zabbix.org) (Classic and Modern) for individual container monitoring
* Scheduling via cron with other helpful tools (bash, curl, less, logrotate, nano, vi) for easier management
* Messaging ability via MSMTP enabled to send mail from container to external SMTP server
* Firewall included with capabilities of monitoring logs to block remote hosts via [Fail2ban](https://github.com/fail2ban/fail2ban)
* Logshipping capabilities to remote log analysis servers via [Fluent-Bit](https://github.com/fluent/fluent-bit)
* Ability to update User ID and Group ID permissions dynamically

## Prerequisites and Assumptions

No prerequisites required

## Installation

### Build from Source
Clone this repository and build the image with `docker build <arguments> (imagename) .`

### Prebuilt Images
Builds of the image are available on [Docker Hub](https://hub.docker.com/r/hhftechnology/alpine)

```bash
docker pull docker.io/hhftechnology/alpine:(imagetag)
```

Builds of the image are also available on the [Github Container Registry](https://github.com/hhftechnology/alpine/pkgs/container/alpine)

```bash
docker pull ghcr.io/hhftechnology/alpine:(imagetag)
```

## 🏗️ Architectures

* ```:amd64```, ```:x86_64``` - 64 bit Intel/AMD (x86_64/amd64)
* ```:arm64v8```, ```:aarch64``` - 64 bit ARM (ARMv8/aarch64)
* ```:arm32v7```, ```:armhf``` - 32 bit ARM (ARMv7/armhf)

Images are built primarily for `amd64` architecture, and may also include builds for `arm/v7`, `arm64` and others. These variants are all unsupported. Consider [sponsoring](https://github.com/sponsors/hhftechnology) my work so that I can work with various hardware.

## 🏷️ Tags

The following image tags are available along with their tagged release:

| Alpine version | Tag     |
| -------------- | ------- |
| `edge`         | `:edge` |
| `3.20`         | `:3.20` |
| `3.19`         | `:3.19` |
| `3.18`         | `:3.18` |
| `3.17`         | `:3.17` |
| `3.16`         | `:3.16` |
| `3.15`         | `:3.15` |
| `3.14`         | `:3.14` |
| `3.13`         | `:3.13` |
| `3.12`         | `:3.12` |
| `3.11`         | `:3.11` |
| `3.10`         | `:3.10` |
| `3.9`          | `:3.9`  |
| `3.8`          | `:3.8`  |
| `3.7`          | `:3.7`  |
| `3.6`          | `:3.6`  |
| `3.5`          | `:3.5`  |

## 📏 Layers & Sizes

![Version](https://img.shields.io/badge/version-amd64-blue.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/docker/image-size/hhftechnology/alpine/amd64.svg?style=for-the-badge)

![Version](https://img.shields.io/badge/version-aarch64-blue.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/docker/image-size/hhftechnology/alpine/aarch64.svg?style=for-the-badge)

![Version](https://img.shields.io/badge/version-armhf-blue.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/docker/image-size/hhftechnology/alpine/armhf.svg?style=for-the-badge)

## 🚀 How to use this image

Utilize this image as a base for further builds. Please visit the [s6 overlay repository](https://github.com/just-containers/s6-overlay) for instructions on how to enable the S6 init system when using this base or look at some of my other images which use this as a base.

The following directories are used for configuration and can be mapped for persistent storage.

| Directory                           | Description                               |
| ----------------------------------- | ----------------------------------------- |
| `/etc/fluent-bit/conf.d/`           | Fluent-Bit custom configuration directory |
| `/etc/fluent-bit/parsers.d/`        | Fluent-Bit custom parsers directory       |
| `/etc/zabbix/zabbix_agentd.conf.d/` | Zabbix Agent configuration directory      |
| `/etc/fail2ban/filter.d`            | Custom Fail2ban Filter configuration      |
| `/etc/fail2ban/jail.d`              | Custom Fail2ban Jail configuration        |
| `/var/log`                          | Container, Cron, Zabbix, other log files  |
| `/assets/cron`                      | Drop custom crontabs here                 |
| `/assets/iptables`                  | Drop custom IPTables rules here           |

## 🔍 Image contents & Vulnerability analysis

| PACKAGE NAME | PACKAGE VERSION | VULNERABILITIES |
|-------------|-----------------|-----------------|

## 📚 Source Repositories

* [Github - hhftechnology/alpine](https://github.com/hhftechnology/alpine)
* [Gitlab - hhftechnology/alpine](https://gitlab.com/hhftechnology/alpine)
* [Bitbucket - hhftechnology/alpine](https://bitbucket.org/hhftechnology/alpine/)

## 🐳 Container Registries

* [Dockerhub - hhftechnology/alpine](https://hub.docker.com/r/hhftechnology/alpine/)
* [Quay.io - hhftechnology/alpine](https://quay.io/repository/hhftechnology/alpine)

## 🔗 Links

* [HHF Technology](https://forum.hhf.technology)
* [Github - hhftechnology](https://github.com/hhftechnology/)
* [Dockerhub - hhftechnology](https://hub.docker.com/u/hhftechnology/)
* [Quay.io - hhftechnology](https://quay.io/organization/hhftechnology)

## 💰 Support

These images were built to serve a specific need in a production environment and gradually have had more functionality added based on requests from the community.

### Usage
- The [Discussions board](https://forum.hhf.technology) is a great place for working with the community on tips and tricks of using this image

### Bugfixes
- Please, submit a [Bug Report](issues/new) if something isn't working as expected. I'll do my best to issue a fix in short order.

### Feature Requests
- Feel free to submit a feature request, however there is no guarantee that it will be added, or at what timeline.

### Updates
- Best effort to track upstream changes, More priority if I am actively using the image in a production environment.

## License
MIT. See [LICENSE](LICENSE) for more details.
