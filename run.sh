#!/usr/bin/env bash
sudo docker run -v /var/www/html:/var/www/html -p 80:80 -p 3000:3000 -p 443:443
$1