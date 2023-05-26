#!/bin/bash

# install Nagiox
curl https://assets.nagios.com/downloads/nagiosxi/install.sh | sh

# Open http port
sudo ufw allow 80