#!/bin/bash
set -ev

if [ "${TRAVIS_BRANCH}" = "master" ]; then
  packer build -only=amazon-ebs template.json
else
  packer build -only=docker template.json
fi
