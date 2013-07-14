#!/usr/bin/env bats

@test "it installs tmux 1.8" {
  run tmux -V
  [ "$status" -eq 0 ]
  [ "${lines[0]}"  = "tmux 1.8" ]
}

@test "it installs vim" {
  run which vim
  [ "$status" -eq 0 ]
}

@test "it installs zsh" {
  run which zsh
  [ "$status" -eq 0 ]
}

@test "it installs tree" {
  run which tree
  [ "$status" -eq 0 ]
}

@test "it installs curl" {
  run which curl
  [ "$status" -eq 0 ]
}

@test "it installs rsync" {
  run which rsync
  [ "$status" -eq 0 ]
}

@test "it installs mosh" {
  run which mosh
  [ "$status" -eq 0 ]
}

@test "it turns off root login" {
  run grep -i "PermitRootLogin No" /etc/ssh/sshd_config
  [ "$status" -eq 0 ]
}

@test "it turns off password authentication" {
  run grep -i "PasswordAuthentication No" /etc/ssh/sshd_config
  [ "$status" -eq 0 ]
}

@test "it turns off DNS for sshd" {
  run grep -i "UseDNS No" /etc/ssh/sshd_config
  [ "$status" -eq 0 ]
}