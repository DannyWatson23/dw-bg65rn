#!/bin/sh -e
echo "installing curl"
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash - 
echo "installing node js"
sudo apt-get install -y nodejs
echo "creating npm installer"
sudo npm install -g yo generator-hubot
echo "going into sudo su root"
sudo su root
echo "going into shared folder"
cd /Desktop/Shared
echo "creating hubot from shared folder"
yo hubot --defaults
