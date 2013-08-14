#!/usr/bin/env bats

@test "git is installed" {
  which git
}

@test "tig is installed" {
  which tig
}

@test "hub is installed" {
  which hub
}

@test "ctags is installed" {
  which ctags
}
