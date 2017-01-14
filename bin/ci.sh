#!/bin/bash
set -ev

if [[ "${TRAVIS_BRANCH}" = "master" || -n "${TRAVIS_TAG}" ]]; then
  packer build template.json
else
  packer build -only=docker template.json
fi
