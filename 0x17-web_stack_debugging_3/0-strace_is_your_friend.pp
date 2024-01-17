# Correcting the Apache 500 error by replacing 'phpp' with 'php' in wp-settings.php

exec { 'correct_apache_error':
  provider => 'shell',
  command  => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php'
}
