# Git on AWS Lamda

[![Build Status](https://travis-ci.org/aws-lambda-bins/git.svg?branch=master)](https://travis-ci.org/aws-lambda-bins/git)

## Downloads

### Latest

- [git-master.tar.gz](https://s3-ap-northeast-1.amazonaws.com/aws-lambda-bins/git/git-master.tar.gz)

### Releases

- [git-v2.11.0.tar.gz](https://s3-ap-northeast-1.amazonaws.com/aws-lambda-bins/git/git-v2.11.0.tar.gz)

## Manual Build

```sh
$ packer build -only=amazo-ebs template.json
```

## Development

### Build

```sh
$ packer build -only=docker template.json
```

### Test

```sh
$ bundle install
$ rake
```
