#!/bin/sh -e
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash - 
sudo apt-get install -y nodejs
sudo mkdir /hubot && cd /hubot
sudo npm install -g yo generator-hubot
sudo yo hubot
