# Puppet script will replace a line in a file on a server

# Increase the ULIMIT of the default file

exec { 'replace_line':
  command => "sed -i 's/^ULIMIT=.*/ULIMIT=\"-n 4096\"/g' /etc/default/nginx",
  path    => ['/bin','/usr/bin']
} ->

exec { 'restart_ngninx':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
