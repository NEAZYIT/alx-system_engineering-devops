# Ensures installation of python3-pip package
package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => '/usr/local/bin:/usr/bin',
  creates => '/usr/local/lib/python3.11/dist-packages/flask',
}