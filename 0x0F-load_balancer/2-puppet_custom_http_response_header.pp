class nginx_custom_header {
  # Ensure the Nginx package is installed
  package { 'nginx':
    ensure => installed,
  }

  # Configure Nginx with the custom HTTP header
  file { '/etc/nginx/sites-available/default':
    ensure  => file,
    # Use the 'nginx_custom_header.erb' template for the configuration
    content => template('nginx_custom_header.erb'),
    # This configuration requires the Nginx package to be installed
    require => Package['nginx'],
    # If the configuration file changes, restart the Nginx service
    notify  => Service['nginx'],
  }

  # Ensure the Nginx service is running and enabled to start on boot
  service { 'nginx':
    ensure  => running,
    enable  => true,
    # The service requires the configuration file to be present
    require => File['/etc/nginx/sites-available/default'],
  }
}
