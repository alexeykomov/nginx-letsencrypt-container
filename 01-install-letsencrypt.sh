#!/bin/sh
openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
service nginx start -d
certbot certonly -n --webroot --webroot-path=/var/www/html -d whisp.space -d www.whisp.space --agree-tos --email "alexeykcontact@gmail.com"
service nginx reload
crontab /etc/my_init.d/crontab-changed
