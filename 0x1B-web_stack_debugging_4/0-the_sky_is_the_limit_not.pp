# puppet script that increases nginx request limit

exec { 'uplimit':
  command => '/bin/sed -i "s/15/3000/g" /etc/default/nginx && sudo service nginx restart'
}
