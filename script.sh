#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install apache2 -y
sudo systemctl start apache2
git clone https://github.com/denilsonbonatti/mundo-invertido.git
cd mundo-invertido
sudo cp * -R /var/www/html