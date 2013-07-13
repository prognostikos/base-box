# base-box cookbook

Install what I consider "the basics" for any server or workstation. This can be
used in the provisioning step of building an AMI, Vagrant base box, or similar.

See the attributes and recipes section below for more details on what can be
installed.

*NOTE:* This README is aspirational. This cookbook is still WIP.
  
# Requirements

Ubuntu 12.04 LTS.

Mac OSX support planned.

# Usage

Add this cookbook to your Berksfile:

    cookbook 'base-box', git: 'git@github.com:prognostikos/base-box.git'

# Attributes

    node[:base_box][:include_security_settings]     = true
    node[:base_box][:include_troubleshooting_tools] = true
    node[:base_box][:include_development_tools]     = true
    node[:base_box][:include_mailer]                = true

# Recipes

## `default` recipe
- apt
- bash-completion
- curl
- hostname
- mosh
- ntp
- openssh
- resolver
- rsync
- sudo
- tmux
- tree
- users
- vim-nox
- zsh

## `security_settings` recipe
- denyhosts
- firewall/ufw/iptables
  - allow ssh & mosh, block everything else
- sysctl settings tweaks

## `troubleshooting_tools` recipe
- htop
- iftop
- lsof
- man
- mtr
- ngrep
- nmap
- strace
- sysstat
- tcpflow

## `development_tools` recipe
- git
- hub
- ctags
- tig

## `mailer`
- postfix
- postfix::aliases

## `remove-build-tools` recipe
- removes the build tools needed for installing the source recipes

# Author

Author:: Matt Rohrer (<matt@prognostikos.com>)
