#!/bin/sh
echo "installing curl"
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash - > /dev/null
echo "installing node js"
sudo apt-get install -y nodejs > /dev/null
echo "creating npm installer"
sudo npm install -g hubot coffee-script
sudo npm install -g yo generator-hubot
sudo chown -R `whoami` ~/.npm
sudo npm install -g yo > /dev/null
chmod g+rwx /root /root/.config /root/.config/configstore
echo "going into shared folder"
sudo su
cd /home/vagrant
yo hubot
