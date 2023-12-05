# Puppet class for configuring Nginx with a custom HTTP header
class nginx_custom_header {
  # Ensure the Nginx package is installed
  package { 'nginx':
    ensure => installed,
  }

  # Configure Nginx
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
# Nginx server configuration
server {
    # Listen on port 80
    listen 80 default_server;
    listen [::]:80 default_server;

    # Location block for all requests
    location / {
        # Add a custom HTTP header 'X-Served-By' with the value of the server's hostname
        add_header X-Served-By $hostname;
    }
}
