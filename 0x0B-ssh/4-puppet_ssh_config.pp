# client configuration file
exec {'/etc/ssh/ssh_config':
    command => '/bin/echo -e "IdentityFile ~/.ssh/holberton\n
	       PasswordAutentication no" >> /etc/ssh/ssh_config',
    path    => '/etc/ssh/ssh_config',
}
