#!/bin/sh -e
echo "one!"
mkdir /root/.config/configstore
echo "two"
chmod g+rwx /root /root/.config /root/.config/configstore
yo -v
echo "going into shared folder"
cd /Desktop/Shared
mkdir hubot-sample
cd hubot-sample
echo "creating hubot"
yo hubot --defaults
echo "creating hubot from shared folder"
sudo yo hubot -g
