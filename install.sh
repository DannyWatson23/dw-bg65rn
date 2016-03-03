#!/bin/sh -e
echo "installing curl"
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash - 
echo "installing node js"
sudo apt-get install -y nodejs
echo "creatting hubot"
sudo mkdir /hubot && cd /hubot
echo "creating npm installer"
sudo npm install -g yo generator-hubot
echo "creating hubot with yo"
sudo yo hubot
