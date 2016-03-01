#!/bin/sh -e
echo I am installing...
sudo apt-get update -y
sudo apt-get install -y nginx
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
sudo npm install -g yo generator-hubot
sudo yo hubot 
echo done...

