#!/bin/sh
echo "installing curl"
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash - > /dev/null
echo "installing node js"
sudo apt-get install -y nodejs > /dev/null
echo "creating npm installer"
npm install -g yo generator-hubot
echo "going into shared folder"
cd /Desktop/Shared
mkdir hubot-sample
cd hubot-sample
echo "creating hubot"
yo hubot --defaults
echo "creating hubot from shared folder"
sudo yo hubot -g
