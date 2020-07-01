# This repository is based on Debian image, but you can use an oser Linux distribution like Ubuntu
# You can retrieve all informations of this Debian image here : https://hub.docker.com/_/debian
FROM debian:stable

MAINTAINER Guillaume SADLER <guillaume.sadler@gmail.com>

# Update and upgrade Debian packages for more securities and stability
RUN apt-get -yq update && apt-get -yq upgrade

# Install OPENSSH, NGINX AND SUPERVISOR
RUN apt-get -yq install openssh-server \
&& apt-get -yq install nginx \
&& apt-get -yq install supervisor \
&& apt-get -yq clean

RUN mkdir -p /var/run/sshd /var/log/supervisor

# Make root password
# CAUTION - CHANGE "password" BY YOUR PASSWORD
RUN echo 'root:password' | chpasswd

# Copy the supervisor conf in Docker container
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
# Copy the OpenSSH conf in Docker container
COPY sshd_config /etc/ssh/sshd_config

# Expose Docker ports (22 for SSH, 80 for HTTP and 443 for HTTPS)
EXPOSE 22 80 443

# Start supervisor
CMD ["/usr/bin/supervisord"]
