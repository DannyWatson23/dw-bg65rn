#!/bin/sh

#installing Curl
if [ -f /etc/apt/sources.list.d/nodesource.list ] ; then echo "Curl has already been installed onto this machine, continuing onto the next program" ; 
else echo "This machine does not have Curl installed, it will be installed now";
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash - > /dev/null; 
echo "Curl installed."
fi

#installing Node Js
if [ -f /usr/bin/nodejs ] ; then echo "Node JS has already been installed onto this machine, continuing onto the next program";
else echo "This machine does not have Node JS installed, it will be installed now";
sudo apt-get install -y nodejs;
echo "Node JS installed."
fi


echo "creating npm installer"
npm install -g hubot coffee-script
npm install -g yo generator-hubot
chown -R `whoami` ~/.npm
npm install -g yo > /dev/null
chmod g+rwx /root /root/.config /root/.config/configstore
echo "going into shared folder"
yo hubot --defaults > /dev/null
cd bin
echo '#!/bin/sh
set -e 
npm install 
export PATH="node_modules/.bin:node_modules/hubot/node_modules/.bin:$PATH" 
export HUBOT_CAMPFIRE_TOKEN="a99f3048fb245a8e639ed414e99ce9996aa11c04" 
export HUBOT_CAMPFIRE_ROOMS="620552" 
export HUBOT_CAMPFIRE_ACCOUNT="university161" 
export HUBOT_CAMPFIRE_ROOMS="620632" 
exec node_modules/.bin/hubot --name "Tron" "$@"' > hubot
echo "finished"

