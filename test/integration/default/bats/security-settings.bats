#!/usr/bin/env bats

@test "denyhosts is installed" {
  which denyhosts
}

@test "denyhosts is configured not to email" {
  sudo grep -E '^ADMIN_EMAIL =\s?$' /etc/denyhosts.conf
}

@test "firewall is active" {
  sudo ufw status verbose | grep "Status: active"
}

@test "firewall defaults to deny" {
  sudo ufw status verbose | grep "Default: deny (incoming), allow (outgoing)"
}

@test "firewall allows ssh" {
  sudo ufw status verbose | grep -E "22/tcp\s+ALLOW IN\s+Anywhere"
}

@test "firewall allows mosh" {
  sudo ufw status verbose | grep -E "60000:61000/udp\s+ALLOW IN\s+Anywhere"
}
