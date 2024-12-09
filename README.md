# Alpine Linux in Docker

[![Docker Automated build](https://img.shields.io/docker/automated/hhftechnology/alpine.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/hhftechnology/alpine/)
[![Docker Pulls](https://img.shields.io/docker/pulls/hhftechnology/alpine.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/hhftechnology/alpine/)
[![Docker Stars](https://img.shields.io/docker/stars/hhftechnology/alpine.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/hhftechnology/alpine/)

[![Alpine Version](https://img.shields.io/badge/Alpine%20version-v3.20.3-green.svg?style=for-the-badge&logo=alpine-linux)](https://alpinelinux.org/)


This Container image [(hhftechnology/alpine)](https://hub.docker.com/r/hhftechnology/alpine/) is based on the minimal [Alpine Linux](https://alpinelinux.org/).

### Alpine Version 3.20.3 (Released 2024-12-09)
### Alpine Version 3.19.4 (Released 2024-12-09)
### Alpine Version 3.18.9 (Released 2024-12-09)
### Alpine Version 3.17.10 (Released 2024-12-09)




This Container image is the base Alpine Linux. For more info on versions & support see [Releases](https://wiki.alpinelinux.org/wiki/Alpine_Linux:Releases)

----


## Table of Contents

- [What is Alpine Linux?](#🏔️-what-is-alpine-linux?)
- [Features](#✨-features)
- [Architectures](#🏗️-architectures)
- [Tags](#🏷️-tags)
- [Layers & Sizes](#📏-layers--sizes)
- [How to use this image](#🚀-how-to-use-this-image)
- [Image contents & Vulnerability analysis](#🔍-image-contents--vulnerability-analysis)
- [Source Repositories](#📚-source-repositories)
- [Container Registries](#🐳-container-registries)
- [Links](#🔗-links)
- [Donation](#💰-donation)


## 🏔️ What is Alpine Linux?
Alpine Linux is a Linux distribution built around musl libc and BusyBox. The image is only 5 MB in size and has access to a package repository that is much more complete than other BusyBox based images. This makes Alpine Linux a great image base for utilities and even production applications. Read more about Alpine Linux here and you can see how their mantra fits in right at home with Container images.

## ✨ Features

* Minimal size only, minimal layers
* Memory usage is minimal on a simple install.

## 🏗️ Architectures

* ```:amd64```, ```:x86_64``` - 64 bit Intel/AMD (x86_64/amd64)
* ```:arm64v8```, ```:aarch64``` - 64 bit ARM (ARMv8/aarch64)
* ```:arm32v7```, ```:armhf``` - 32 bit ARM (ARMv7/armhf)

#### 📝 PLEASE CHECK TAGS BELOW FOR SUPPORTED ARCHITECTURES, THE ABOVE IS A LIST OF EXPLANATION

## 🏷️ Tags

* ```:latest``` latest branch based (Automatic Architecture Selection)
* ```:master``` master branch usually inline with latest
* ```:x.y.z```, ```:x.y.z-arch``` version tag (Automatic Architecture Selection)
* ```:amd64```, ```:x86_64``` amd64 based on latest tag but amd64 architecture
* ```:aarch64```, ```:arm64v8``` Armv8 based on latest tag but arm64 architecture
* ```:armhf```, ```:arm32v7``` Armv7 based on latest tag but arm architecture

## 📏 Layers & Sizes

![Version](https://img.shields.io/badge/version-amd64-blue.svg?style=for-the-badge)
![MicroBadger Layers (tag)](https://img.shields.io/docker/layers/hhftechnology/alpine/amd64.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/docker/image-size/hhftechnology/alpine/amd64.svg?style=for-the-badge)

![Version](https://img.shields.io/badge/version-aarch64-blue.svg?style=for-the-badge)
![MicroBadger Layers (tag)](https://img.shields.io/docker/layers/hhftechnology/alpine/aarch64.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/docker/image-size/hhftechnology/alpine/aarch64.svg?style=for-the-badge)

![Version](https://img.shields.io/badge/version-armhf-blue.svg?style=for-the-badge)
![MicroBadger Layers (tag)](https://img.shields.io/docker/layers/hhftechnology/alpine/armhf.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/docker/image-size/hhftechnology/alpine/armhf.svg?style=for-the-badge)

## 🚀 How to use this image
#### Usage
Use like you would any other base image:

```
FROM hhftechnology/alpine
RUN apk add --no-cache mysql-client
ENTRYPOINT ["mysql"]
```
This example has a base image size of only 6MB. Compare that to our good friend Ubuntu:

```
FROM ubuntu
RUN apt-get update \
    && apt-get install -y --no-install-recommends mysql-client \
    && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["mysql"]
```
This yields us a base image size of about 74MB image.

## 🔍 Image contents & Vulnerability analysis

| PACKAGE NAME          | PACKAGE VERSION | VULNERABILITIES |
|-----------------------|-----------------|-----------------|


## 📚 Source Repositories

* [Github - hhftechnology/alpine](https://github.com/hhftechnology/alpine)

* [Gitlab - hhftechnology/alpine](https://gitlab.com/hhftechnology/alpine)

* [Bitbucket - hhftechnology/alpine](https://bitbucket.org/hhftechnology/alpine/)


## 🐳 Container Registries

* [Dockerhub - hhftechnology/alpine](https://hub.docker.com/r/hhftechnology/alpine/)

* [Quay.io - hhftechnology/alpine](https://quay.io/repository/hhftechnology/alpine)


## 🔗 Links

* [HHF Technology](https://forum.hhf.technology/)

* [Github - HHF Technology](https://github.com/hhftechnology/)

* [Dockerhub - HHF Technology](https://hub.docker.com/u/hhftechnology/)

* [Quay.io - HHF Technology](https://quay.io/organization/hhftechnology)

* [Maintainer - HHF Technology](https://github.com/hhftechnology)

## 💰 Donation

To your nearest orphan age! That all I need to get me going