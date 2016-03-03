#!/bin/sh -e
echo "installing curl"
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash - 
echo "installing node js"
sudo apt-get install -y nodejs
echo "creating npm installer"
sudo npm install -g yo generator-hubot
echo "setting permissions"
sudo chmod -R 777 /usr/lib/node_modules/yo/node_modules/configstore
sudo chmod -R 777 vagrant /usr/lib/node_modules/yo/node_modules
chmod g+rwx -R /usr/lib/node_modules
#echo "going into sudo su root"
#su vagrant
echo "going into shared folder"
cd /Desktop/Shared
echo "creating hubot from shared folder"
sudo yo hubot -g
