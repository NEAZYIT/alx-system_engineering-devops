# Ensures the installation of Flask version 2.1.0 using pip
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip',
}