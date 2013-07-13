#!/usr/bin/env bats

@test "it installs htop" {
  run which htop
  [ "$status" -eq 0 ]
}

@test "it installs iftop" {
  run which iftop
  [ "$status" -eq 0 ]
}

@test "it installs lsof" {
  run which lsof
  [ "$status" -eq 0 ]
}

@test "it installs ngrep" {
  run which ngrep
  [ "$status" -eq 0 ]
}

@test "it installs nmap" {
  run which nmap
  [ "$status" -eq 0 ]
}

@test "it installs strace" {
  run which strace
  [ "$status" -eq 0 ]
}

@test "it installs sysstat" {
  [ -f /etc/sysstat/sysstat ]
}

@test "it installs tcpflow" {
  run which tcpflow
  [ "$status" -eq 0 ]
}

