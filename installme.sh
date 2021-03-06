 #!/bin/sh
 #cd /home/vagrant
 #cd /home/vagrant/bin
 #sudo su


#installing Curl
if [ -f /etc/apt/sources.list.d/nodesource.list ] ; then echo "Curl has already been installed onto this machine, continuing onto the next program" ; 
clear
else echo "This machine does not have Curl installed, it will be installed now";
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash - > /dev/null; 
echo "Curl installed."
clear
fi


#installing Node Js
if [ -f /usr/bin/nodejs ] ; then echo "Node JS has already been installed onto this machine, continuing onto the next program"; clear;
else echo "This machine does not have Node JS installed, it will be installed now";
sudo apt-get install -y nodejs > /dev/null;
echo "Node JS installed."
clear;
fi
 
 
 
#Installing NPM
if [ -f /usr/bin/coffee ]; then echo "NPM has already been installed onto this machine, continuing onto the next program"; clear;
else echo "This machine does not have NPM installed, it will be installed now";
npm install -g hubot coffee-script > /dev/null
npm install -g yo generator-hubot > /dev/null
echo "NPM installed"
clear
fi
 
 
 chown -R `whoami` ~/.npm
 npm install -g yo > /dev/null
 chmod g+rwx /root /root/.config /root/.config/configstore
  echo "going into shared folder"

if [ -f /home/vagrant/bin/hubot.cmd ]; then echo "Hubot has already been installed onto this machine, continuing onto the rest of the script"; clear;
else echo "This machine does not have Hubot installed, it will be installed now";
yo hubot --defaults > /dev/null
fi


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
