# nginx-letsencrypt-container

Steps to build and run:
1. `cd nginx-letsencrypt-container`
2. `sudo docker build .`
3. `sudo docker run -it -p 80:80 -p 443:443 -p 3000:3000 -v /etc/ssl:/etc/nginx/ssl -v /var/www/html:/var/www/html 8b670539a53e`
