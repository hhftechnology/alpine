FROM scratch

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="HHF Technology <discourse@hhf.technology>" \
    architecture="arm64v8/aarch64" \
    alpine-version="3.20.3" \
    build="9-Dec 2024" \
    org.opencontainers.image.title="alpine" \
    org.opencontainers.image.description="Container image running Alpine Linux" \
    org.opencontainers.image.authors="HHF Technology <discourse@hhf.technology>" \
    org.opencontainers.image.vendor="HHF Technology" \
    org.opencontainers.image.version="3.20.3" \
    org.opencontainers.image.url="https://hub.docker.com/r/hhftechnology/alpine/" \
    org.opencontainers.image.source="https://github.com/hhftechnology/alpine" \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.created=$BUILD_DATE

ADD alpine-minirootfs-3.20.3-aarch64.tar.gz /
CMD ["/bin/sh"]
