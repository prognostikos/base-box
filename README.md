# base-box cookbook

Install what I consider "the basics" for any server or workstation. This can be
used in the provisioning step of building an AMI, Vagrant base box, or similar.

See the attributes and recipes section below for more details on what can be
installed and what settings can be tweaked.

# Requirements

Ubuntu 12.04 LTS.

# Usage

Add this cookbook to your Berksfile:

    cookbook 'base-box', git: 'git@github.com:prognostikos/base-box.git'

# Attributes

    node[:base_box][:include_security_settings]     = true
    node[:base_box][:include_troubleshooting_tools] = true
    node[:base_box][:include_development_tools]     = true
    node[:base_box][:include_mailer]                = true

    override[:ntp][:servers] = %w(0.pool.ntp.org 1.pool.ntp.org 2.pool.ntp.org 3.pool.ntp.org)

    override[:openssh][:server][:password_authentication] = "no"
    override[:openssh][:server][:permit_root_login]       = "no"
    override[:openssh][:server][:use_dns]                 = "no"

    override[:denyhosts][:admin_email] = ""

# Recipes

## default
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

** TODO **
- apticron & automatic security upgrades
- unattended-upgrades

By default all of the recipes below will also be included, but you can override
the `[:base_box][:include_*]` attributes if you need to.

## security_settings
- denyhosts
- firewall/ufw
  - allow ssh & mosh, block everything else

## troubleshooting_tools
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

## development_tools
- git
- hub
- ctags
- tig
- the_silver_searcher (ag)

## mailer
- postfix
- postfix::aliases

# Testing
There is a test-kitchen/bats test file for each recipe. Make sure you have
at least test-kitchen 1.0pre installed and run `kitchen test`.

# Author

Author:: Matt Rohrer (<matt@prognostikos.com>)
