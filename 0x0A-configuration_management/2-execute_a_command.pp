# Using Puppet, create a minifest that kills a process named killmenow
exec {'killmenow':
command => '/usr/bin/pkill -f killmenow'
}
