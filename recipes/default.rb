#
# Cookbook Name:: base-box
# Recipe:: default
#
# Copyright (C) 2013 Matt Rohrer
# 

include_recipe "apt"

include_recipe "ntp"

include_recipe "openssh"

package "libevent-2.0-5"
package_name = "tmux_1.8+fpm0_amd64.deb"
cookbook_file "#{Chef::Config[:file_cache_path]}/#{package_name}"
dpkg_package "#{Chef::Config[:file_cache_path]}/#{package_name}"

%w(zsh bash-completion vim-nox tree curl rsync).each do |p|
  package p
end

include_recipe "mosh"

include_recipe "base-box::security-settings" if node[:base_box][:include_security_settings]

include_recipe "base-box::troubleshooting-tools" if node[:base_box][:include_troubleshooting_tools]

include_recipe "base-box::development-tools" if node[:base_box][:include_development_tools]

include_recipe "base-box::mailer" if node[:base_box][:include_mailer]

