#!/bin/bash
echo I am installing...
sudo apt-get update -y
sudo apt-get install -y nginx
box1.vm.hostname = "DannyBox1"
box1.vm.network "private_network", type: "dhcp"
box1.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true
box1.vm.network "public_network", type: "dhcp"
echo done...

