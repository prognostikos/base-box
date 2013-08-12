#!/usr/bin/env bats

@test "tmux 1.8 is installed" {
  run tmux -V
  [ "$status" -eq 0 ]
  [ "${lines[0]}"  = "tmux 1.8" ]
}

@test "vim is installed" {
  run which vim
  [ "$status" -eq 0 ]
}

@test "zsh is installed" {
  run which zsh
  [ "$status" -eq 0 ]
}

@test "tree is installed" {
  run which tree
  [ "$status" -eq 0 ]
}

@test "curl is installed" {
  run which curl
  [ "$status" -eq 0 ]
}

@test "rsync is installed" {
  run which rsync
  [ "$status" -eq 0 ]
}

@test "mosh is installed" {
  run which mosh
  [ "$status" -eq 0 ]
}

@test "root login via ssh is disabled" {
  run grep -i "PermitRootLogin No" /etc/ssh/sshd_config
  [ "$status" -eq 0 ]
}

@test "password authentication via ssh is disabled" {
  run grep -i "PasswordAuthentication No" /etc/ssh/sshd_config
  [ "$status" -eq 0 ]
}

@test "DNS lookups by sshd are disabled" {
  run grep -i "UseDNS No" /etc/ssh/sshd_config
  [ "$status" -eq 0 ]
}
