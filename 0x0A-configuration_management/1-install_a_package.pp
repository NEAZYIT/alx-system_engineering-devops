# Install Flask version 2.1.0 using pip3

exec { 'install_flask': # Defines an 'exec' resource named 'install_flask'
  command => '/usr/bin/pip3 install Flask==2.1.0', # Specifies the command to install Flask version 2.1.0 using pip3
  path    => ['/usr/bin', '/usr/local/bin'], # Directories where the command should be found
  unless  => '/usr/bin/flask --version | grep "Flask 2.1.0"', # Checks if Flask 2.1.0 is already installed
}