# 1-install_a_package.pp

# Ensure pip3 is installed
package { 'python3-pip':
  ensure => present,
}

# Install flask from pip3 with version 2.1.0
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}