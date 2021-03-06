name             'base-box'
maintainer       'Matt Rohrer'
maintainer_email 'matt@prognostikos.com'
license          'Apache 2.0'
description      'The basics for a server or workstation'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.3.2'

supports 'ubuntu'

depends 'apt'
depends 'denyhosts'
depends 'git'
depends 'hostname'
depends 'hub'
depends 'ufw'
depends 'firewall'
depends 'git'
depends 'mosh'
depends 'ntp'
depends 'openssh'
depends 'postfix'
depends 'resolver'
depends 'rsync'
depends 'sysstat'
depends 'sudo'
depends 'user'
depends 'the_silver_searcher'
