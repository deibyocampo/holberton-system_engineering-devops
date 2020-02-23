#!/usr/bin/env bash
#puppet manifest to install a nginx
exec {'http header':
command => 'sudo apt update && sudo apt -y install nginx && custom_header="\\\tadd_header X-Served-By \$hostname;\n" && sudo sed -i "17i $custom_header" /etc/nginx/nginx.conf && sudo service nginx restart',
provider => shell,
}
