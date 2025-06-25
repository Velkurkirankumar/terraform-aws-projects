#!/bin/bash
sudo apt update
sudo apt install nginx -y
sudo cp /tmp/index.html /var/www/html/index.html