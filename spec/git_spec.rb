require 'spec_helper'

RSpec.describe 'git' do
  GIT = '/tmp/usr/bin/git'
  REPO_URL = 'https://github.com/octocat/Hello-World.git'

  describe command("#{GIT} --version") do
    its(:stdout) { should match(/git version 2.11.0/) }
  end

  describe command("#{GIT} clone #{REPO_URL}") do
    its(:exit_status) { should eq 0 }
  end

  describe file('dest.tar.gz') do
    it { should exist }
  end
end
