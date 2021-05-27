# Sky is the limit, let's bring that limit higher mandatory
# Puppet to fix limit number request to unlimit number request with nginx
exec { 'find and correct':
    command => "sed -i 's/ULIMIT=/# ULIMIT=/g' /etc/default/nginx",
    path    => [ '/usr/bin' , '/bin', '/usr/sbin', '/sbin' ],
}
exec { 'restart nginx':
    command => 'sudo service nginx restart',
    path    => '/usr/bin',
} ~>
service { 'nginx':
    ensure    => running,
}
