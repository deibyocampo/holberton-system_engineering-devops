#!/usr/bin/env bash
#puppet manifest to install a nginx server

exec {'install nginx':
  command => 'sudo apt-get -y update && sudo apt-get -y install nginx && sudo sed -i "15i aadd_header X-Served-By \$hostname;" /etc/nginx/nginx.conf && sudo service nginx restart',
  provider => shell,
  }
