#
# Cookbook Name:: base-box
# Recipe:: default
#
# Copyright (C) 2013 Matt Rohrer
# 

include_recipe "apt"
include_recipe "ntp"
include_recipe "openssh"
include_recipe "mosh"

apt_repository "bn" do
  uri 'http://bn-apt-repo.s3.amazonaws.com'
  distribution node['lsb']['codename']
  components ['main']
  arch 'amd64'
  trusted true # I trust it...do you?
end

apt_repository 'vim-snapshots' do
  uri 'http://ppa.launchpad.net/nmi/vim-snapshots/ubuntu'
  distribution node['lsb']['codename']
  components   ['main']
  keyserver    'keyserver.ubuntu.com'
  key          '235BE609'
end

%w(tmux zsh bash-completion vim-nox tree curl rsync libevent-2.0-5).each do |p|
  package p
end

include_recipe "base-box::security-settings" if node[:base_box][:include_security_settings]

include_recipe "base-box::troubleshooting-tools" if node[:base_box][:include_troubleshooting_tools]

include_recipe "base-box::development-tools" if node[:base_box][:include_development_tools]

include_recipe "base-box::mailer" if node[:base_box][:include_mailer]

