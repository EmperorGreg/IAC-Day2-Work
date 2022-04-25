#!/bin/bash
sudo apt update
sudo apt install apache2 -y
rm /var/www/html/index.html
cp /vagrant/index.html /var/www/html/
sudo systemctl restart apache2