#!/bin/sh
openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
service nginx start -d
certbot certonly -n --webroot --webroot-path=/var/www/html -d whisp.space -d www.whisp.space --agree-tos --email "alexeykcontact@gmail.com"
mv /etc/nginx/nginx.conf /etc/nginx/nginx.backup.conf
mv /etc/nginx/nginx.ssl.conf /etc/nginx/nginx.conf
service nginx reload -d
crontab /etc/my_init.d/crontab-changed
