#!/usr/bin/env bats

@test "htop is installed" {
  run which htop
  [ "$status" -eq 0 ]
}

@test "iftop is installed" {
  run which iftop
  [ "$status" -eq 0 ]
}

@test "lsof is installed" {
  run which lsof
  [ "$status" -eq 0 ]
}

@test "ngrep is installed" {
  run which ngrep
  [ "$status" -eq 0 ]
}

@test "nmap is installed" {
  run which nmap
  [ "$status" -eq 0 ]
}

@test "strace is installed" {
  run which strace
  [ "$status" -eq 0 ]
}

@test "sysstat is installed" {
  [ -f /etc/sysstat/sysstat ]
}

@test "tcpflow is installed" {
  run which tcpflow
  [ "$status" -eq 0 ]
}

