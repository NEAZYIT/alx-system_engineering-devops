# This Puppet manifest ensures that Flask version 2.1.0 is installed via pip3
package { 'flask':
  ensure   => '2.1.0',  # The version of Flask to be installed
  provider => 'pip3',  # Specifies that pip3 is used to install Flask
}