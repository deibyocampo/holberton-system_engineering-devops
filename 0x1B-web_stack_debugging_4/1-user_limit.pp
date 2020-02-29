#Change the OS configuration
exec { 'User Limit':
  command => 'sed -i \'s/nofile 5/nofile 3000/; s/nofile 4/nofile 2000/\' /etc/segurity/limits.conf',
  provider => shell,
  }
