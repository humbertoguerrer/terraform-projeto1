#!/bin/bash
sudo apt update
sudo apt upgrade -y

sudo apt install curl -y

curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh

sudo docker run -dti --name site-bootcamp -p 80:80 humbertoguerrer/meusite-bootcamp-devops:1.0