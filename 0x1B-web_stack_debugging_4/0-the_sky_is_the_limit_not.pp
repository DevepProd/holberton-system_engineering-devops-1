# Sky is the limit, let's bring that limit higher mandatory
# Puppet to fix limit number request to unlimit number request with nginx
exec {'Unlimit Request':
    command => "sed -i 's/ULIMIT=/# ULIMIT=/g' /etc/default/nginx",
    path    => ['/bin', '/sbin', 'usr/bin', '/usr/sbin'],
}

exec {'restart nginx':
    command => 'sudo service nginx restart',
    path    => ['/bin', '/sbin', 'usr/bin', '/usr/sbin'],
}

service {'nginx':
    ensure  => running,
}
