class nginx {
  package { 'nginx':
    ensure => installed,
  }

  file { '/var/www/html/index.html':
    ensure  => file,
    content => 'Hello World!',
    require => Package['nginx'],
  }

  file { '/etc/nginx/sites-available/default':
    ensure  => file,
    content => "server {
      listen 80;
      server_name _;
      location / {
        root /var/www/html;
      }
      location /redirect_me {
        return 301 https://github.com/NEAZYIT;
      }
      error_page 404 /404.html;
      location = /404.html {
        root /var/www/html;
        internal;
      }
    }",
    require => Package['nginx'],
  }

  service { 'nginx':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/nginx/sites-available/default'],
  }
}

include nginx