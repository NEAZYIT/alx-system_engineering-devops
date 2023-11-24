# Ensures the installation of the 'puppet-lint' package version 2.1.1 using gem provider
package { 'puppet-lint':
  ensure   => '2.1.1',
  provider => 'gem',
}