#!/bin/bash

sudo apt install ufw -y

#Allowing SSH (port 22)...
sudo ufw allow ssh

#Denying HTTP (port 80)...
sudo ufw deny http

sudo ufw enable

echo "Firewall status:"
sudo ufw status
