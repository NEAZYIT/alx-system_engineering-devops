# Ensure the 'nginx' package is installed
package { 'nginx':
  ensure => installed,
}

# Manage the Nginx limits
file_line { 'nginx_limits':
  path  => '/etc/default/nginx',
  line  => 'LIMIT=2000',
  match => '^LIMIT=',
}

# Manage the Nginx service
service { 'nginx':
  ensure     => running,
  enable     => true,
  subscribe  => File_line['nginx_limits'],
}
