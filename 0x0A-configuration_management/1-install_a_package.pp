# Ensure pip3 is installed
package { 'python3-pip':
  ensure => present,
}

# Install Flask from pip3 with version 2.1.0
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}

# Ensure specific version of Werkzeug is installed
package { 'Werkzeug':
  ensure   => '2.1.1', # or the version compatible with Flask 2.1.0
  provider => 'pip3',
  require  => Package['python3-pip'],
}