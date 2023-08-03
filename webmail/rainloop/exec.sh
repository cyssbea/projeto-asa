#!/bin/bash
sudo nginx_gen_ssl.sh

sudo mkdir -p /srv/www/rainloop
sudo n2ensite rainloop
sudo n2ensite rainloop-ssl
sudo systemctl restart nginx

sudo apache_gen_ssl

sudo mkdir -p /srv/www/rainloop
sudo a2ensite rainloop
sudo a2ensite rainloop-ssl
sudo systemctl restart httpd