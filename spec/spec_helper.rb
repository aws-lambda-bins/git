require 'docker'
require 'serverspec'

set :backend, :docker
set :docker_url, ENV['DOCKER_HOST'] || 'unix:///var/run/docker.sock'
set :docker_image, "aws_lambda_bins/git:2.11.0"
