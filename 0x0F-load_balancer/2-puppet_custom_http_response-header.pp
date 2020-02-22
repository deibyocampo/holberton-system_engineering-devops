#!/ust/bin/env bash
#puppet manifest to install a nginx server
exec {'http header':
command => 'sudo apt -y update && sudo apt -y install nginx && 
               custom_header="\\\tadd_header X-Served-By \$hostname;\n" && sudo sed -i "17i
               $custom_header" /etc/nginx/nginx.conf && sudo service nginx restart',
provider => shell,
}
