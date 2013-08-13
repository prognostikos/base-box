#!/usr/bin/env bats

@test "denyhosts is installed" {
  which denyhosts
}

@test "denyhosts is configured not to email" {
  sudo grep -E '^ADMIN_EMAIL =\s?$' /etc/denyhosts.conf
}
