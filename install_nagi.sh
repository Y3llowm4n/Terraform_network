#!/bin/bash

# install firewalld 
sudo yum install firewalld wget -y

# change directory to temp
cd /tmp

# get nagios
sudo wget http://assets.nagios.com/downloads/nagiosxi/xi-latest.tar.gz

# expand installation directory
tar zxf xi-latest.tar.gz

# change directory to newly installed
cd /tmp/nagiosxi

# fully install nagios
./fullinstall -y
