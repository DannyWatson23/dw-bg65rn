#!/bin/bash
echo I am installing...
sudo apt-get update -y
sudo apt-get install -y nginx
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g yo generator-hubot
mkdir Hubot
cd Hubot
yo hubot
export HUBOT_CAMPFIRE_TOKEN="a99f3048fb245a8e639ed414e99ce9996aa11c04"
export HUBOT_CAMPFIRE_ROOMS="620623"
export HUBOT_CAMPFIRE_ACCOUNT="university161"
echo done...

