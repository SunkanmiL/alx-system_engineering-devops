# Updates config file using puppet
file_line { 'disable password login':
  path => '/etc/ssh/ssh_config',
  line => 'PasswordAuthentication no',
}
file_line { 'add path to find the keys':
  path => '/etc/ssh/ssh_config',
  line => 'IdentityFile ~/.ssh/school',
}