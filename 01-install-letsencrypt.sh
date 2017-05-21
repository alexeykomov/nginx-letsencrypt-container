#!/bin/sh
openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
service nginx start -d
certbot certonly -n --webroot --webroot-path=/usr/share/nginx/html -d whisp.space -d www.whisp.space --agree-tos --email "alexeykcontact@gmail.com"
service nginx reload
crontab crontab-changed
