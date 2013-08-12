default[:base_box][:include_security_settings]     = true
default[:base_box][:include_troubleshooting_tools] = true
default[:base_box][:include_development_tools]     = true
default[:base_box][:include_mailer]                = true

override[:ntp][:servers] = %w(0.pool.ntp.org 1.pool.ntp.org 2.pool.ntp.org 3.pool.ntp.org)

override[:openssh][:server][:password_authentication] = "no"
override[:openssh][:server][:permit_root_login]       = "no"
override[:openssh][:server][:use_dns]                 = "no"

override[:denyhosts][:admin_email] = ""
