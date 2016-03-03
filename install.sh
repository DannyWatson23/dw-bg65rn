#!/bin/sh -e
echo "installing curl"
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash - 
echo "installing node js"
sudo apt-get install -y nodejs
echo "creating npm installer"
sudo npm install -g yo generator-hubot
#echo "going into sudo su root"
#su vagrant
echo "going into shared folder"
cd /Desktop/Shared
mkdir hubot-sample
cd hubot-sample
npm init
echo "creating hubot"
yo hubot --defaults
echo "creating hubot from shared folder"
sudo yo hubot -g
