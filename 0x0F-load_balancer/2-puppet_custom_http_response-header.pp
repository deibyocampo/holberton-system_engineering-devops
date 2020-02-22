#!/usr/bin/env bash
#puppet manifest to install a nginx server

exec {'Install nginx':
  command => 'sudo apt -y update && sudo apt -y install nginx && sudo sed -i "15i add_header X-Served-By \$hostname;", /etc/nginx/nginx.conf && sudo service nginx restart',
    provider => shell,
    }
