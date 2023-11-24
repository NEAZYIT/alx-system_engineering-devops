# Ensures installation of Flask version 2.1.0 using pip3
exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => '/usr/local/bin:/usr/bin',
  creates => '/usr/local/lib/python3.8/dist-packages/flask',
}