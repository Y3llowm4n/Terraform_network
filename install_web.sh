#!/bin/bash

# Install Apache2
sudo apt-get update
sudo apt-get install apache2 -y

# Start Apache2 and enable it to start at boot
sudo systemctl start apache2
sudo systemctl enable apache2

# Configure Firewall
sudo ufw app list
sudo ufw allow ‘Apache’

# Install and enable mod_wsgi
sudo apt-get install libapache2-mod-wsgi-py3 -y

# Creating flask app
cd /var/www 
sudo mkdir webApp
cd webApp

# Install flask
sudo apt install python3-pip -y
sudo pip install Flask





