#!/usr/bin/env bash

set -e

if [[ "${GITHUB_REF}" == refs/heads/master || "${GITHUB_REF}" == refs/tags/* ]]; then
    docker login -u "${DOCKERHUB_USERNAME}" -p "${DOCKERHUB_TOKEN}"

    if [[ "${GITHUB_REF}" == refs/tags/* ]]; then
      export STABILITY_TAG="${GITHUB_REF##*/}"
    fi

    IFS=',' read -ra tags <<< "${TAGS}"

    for tag in "${tags[@]}"; do
        make buildx-push TAG="${tag}";
    done
fi
