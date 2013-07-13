#
# Cookbook Name:: base-box
# Recipe:: troubleshooting-tools
#
# Copyright (C) 2013 Matt Rohrer
# 

%w(htop iftop lsof mtr ngrep nmap strace sysstat tcpflow).each do |p|
  package p
end
