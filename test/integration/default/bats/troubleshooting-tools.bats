#!/usr/bin/env bats

@test "htop is installed" {
  which htop
}

@test "iftop is installed" {
  which iftop
}

@test "lsof is installed" {
  which lsof
}

@test "ngrep is installed" {
  which ngrep
}

@test "nmap is installed" {
  which nmap
}

@test "strace is installed" {
  which strace
}

@test "sysstat is installed" {
  [ -f /etc/sysstat/sysstat ]
}

@test "tcpflow is installed" {
  which tcpflow
}

