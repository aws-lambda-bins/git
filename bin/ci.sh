#!/bin/bash
set -ev

if [ "${TRAVIS_BRANCH}" = "master" ]; then
  packer build template.json
  mv dest/git-* dest/git-master.tar.gz
elif [ -n "${TRAVIS_TAG}" ]; then
  packer build template.json
  mv dest/git-* dest/git-${TRAVIS_TAG}.tar.gz
else
  packer build -only=docker template.json
fi
