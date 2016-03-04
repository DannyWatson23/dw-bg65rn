#!/bin/sh
#cd /home/vagrant
#cd /home/vagrant/bin
#sudo su
echo "installing curl"
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash - > /dev/null
echo "installing node js"
sudo apt-get install -y nodejs > /dev/null
echo "creating npm installer"
npm install -g hubot coffee-script
npm install -g yo generator-hubot
chown -R `whoami` ~/.npm
npm install -g yo > /dev/null
chmod g+rwx /root /root/.config /root/.config/configstore
echo "going into shared folder"
yo hubot --defaults > /dev/null
cd bin
echo 'export HUBOT_CAMPFIRE_TOKEN="a99f3048fb245a8e639ed414e99ce9996aa11c04"' >> hubot
echo 'export HUBOT_CAMPFIRE_ROOMS="620552"' >> hubot
echo 'export HUBOT_CAMPFIRE_ACCOUNT="university161"' >> hubot
echo "finished"

