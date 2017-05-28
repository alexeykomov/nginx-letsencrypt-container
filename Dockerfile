############################################################
# Dockerfile to build Nginx with Letsencrypt
############################################################

# Set the base image to Ubuntu
FROM phusion/baseimage:latest

# File Author / Maintainer
MAINTAINER Alex K <alexeykcontact@gmail.com>

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Install Nginx
# Add application repository URL to the default sources
RUN echo "deb http://archive.ubuntu.com/ubuntu/ raring main universe" >> /etc/apt/sources.list
# Update the repository
RUN apt-get update; exit 0
# Install necessary tools
RUN apt-get install -y nano wget dialog net-tools
# Download and Install Nginx
RUN apt-get install -y nginx

# Install Letsencrypt
RUN add-apt-repository ppa:certbot/certbot
RUN apt-get update; exit 0
RUN apt-get install -y certbot

# Init
RUN mkdir -p /etc/my_init.d
COPY 01-install-letsencrypt.sh /etc/my_init.d/01-install-letsencrypt.sh
COPY crontab-changed /etc/my_init.d/crontab-changed
COPY nginx.ssl.conf /etc/nginx/nginx.ssl.conf
RUN chmod +x /etc/my_init.d/01-install-letsencrypt.sh
