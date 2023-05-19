# Enable the user holberton to login and open files without error

# Increase hard file limit for Holberton user
exec { 'increase-hard-file-limit':
  command => "sed -i '/holberton hard/s/5/60000/' /etc/security/limits.conf",
  path    => '/usr/local/bin/:/bin/'
}

# Increase soft file limit for Holberton user
exec { 'increase-soft-file-limit':
  command => "sed -i '/holberton soft/s/4/60000/' /etc/security/limits.conf",
  path    => '/usr/local/bin/:/bin/'
}
