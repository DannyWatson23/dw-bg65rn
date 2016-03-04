#!/bin/sh
#sudo su
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
cd vagrant/home/vagrant
yo hubot --defaults > /dev/null
cd /home/vagrant/bin
echo 'export HUBOT_CAMPFIRE_TOKEN="a99f3048fb245a8e639ed414e99ce9996aa11c04"' >> hubot
echo 'export HUBOT_CAMPFIRE_ROOMS="620552"' >> hubot
echo 'export HUBOT_CAMPFIRE_ACCOUNT="university161"' >> hubot
echo "finished"

