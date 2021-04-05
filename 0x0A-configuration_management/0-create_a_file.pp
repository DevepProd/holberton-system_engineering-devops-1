# create a file in /tmp
file{'tmp/holberton':
     path    => '/tmp/holberton',
     mode    => '0744',
     owner   => 'ww-data',
     group   => 'www-data',
     content => 'I love Puppet'
     }
