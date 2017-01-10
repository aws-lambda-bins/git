# Git on AWS Lamda

## Download

- [git-2.11.0.tar.gz](https://s3-ap-northeast-1.amazonaws.com/aws-lambda-bins/git-2.11.0.tar.gz)

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
