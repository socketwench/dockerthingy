#!/usr/bin/env sh

# Update and install software
apt-get update

# Install the MySQL database.
apt-get -yq install mysql-server

# Change the bind address to allow remote access.
sed -i -e "s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

