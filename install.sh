#!/bin/sh
#cd /home/vagrant
#cd /home/vagrant/bin
#sudo su
require 'https://github.com/DannyWatson23/dw-bg65rn/edit/master/curl.sh'
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

