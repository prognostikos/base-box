#!/usr/bin/env bats

@test "tmux 1.8 is installed" {
  run tmux -V
  [ "$status" -eq 0 ]
  [ "${lines[0]}"  = "tmux 1.8" ]
}

@test "vim is installed" {
  which vim
}

@test "zsh is installed" {
  which zsh
}

@test "tree is installed" {
  which tree
}

@test "curl is installed" {
  which curl
}

@test "rsync is installed" {
  which rsync
}

@test "mosh is installed" {
  which mosh
}

@test "root login via ssh is disabled" {
  grep -i "PermitRootLogin No" /etc/ssh/sshd_config
}

@test "password authentication via ssh is disabled" {
  grep -i "PasswordAuthentication No" /etc/ssh/sshd_config
}

@test "DNS lookups by sshd are disabled" {
  grep -i "UseDNS No" /etc/ssh/sshd_config
}
