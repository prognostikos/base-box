#!/usr/bin/env bats

@test "denyhosts is installed" {
  run which denyhosts
  [ "$status" -eq 0 ]
}

@test "denyhosts is configured not to email" {
  run sudo grep -E '^ADMIN_EMAIL =\s?$' /etc/denyhosts.conf
  [ "$status" -eq 0 ]
}
