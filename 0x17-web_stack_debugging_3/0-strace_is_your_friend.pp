# Web Stack debugging fix typo in config file Using strace, find out
# why apache is returning a 500 error. Once you find the issue
# Fix it and the automate it using puppet
exec { 'fix-wordpress':
  environment => ['DIR=/var/www/html/wp-settings.php',
                  'OLD=phpp',
                  'NEW=php'],
  command     => 'sudo sed -i "s/$OLD/$NEW/" $DIR',
  path        => ['/usr/bin', '/bin'],
  returns     => [0, 1]
}
