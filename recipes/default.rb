#
# Cookbook Name:: docker-ruby
# Recipe:: ruby
#

include_recipe 'docker'

cookbook_file 'Dockerfile' do
  path '/tmp/Dockerfile'
  source 'Dockerfile'
end

docker_image 'ubuntu' do
  source '/tmp/Dockerfile'
  tag 'ruby'
  cmd_timeout 900
  action :build_if_missing
end
