#!/bin/bash
SVC="apache2"
PATH="/home/shaifha/Desktop/shaifha_sahar*"
sudo cp -rf $PATH /home/shaifha/Documents
sudo systemctl stop $SVC
sudo rm -rf /var/www/html*
sudo mv -r $PATH /var/www/html
sudo systemctl start $SVC
sudo systemctl enable $SVC
if [ @? -eq 0 ]
then
   echo "This $SVC service is started"
else
   echo "This $SVC service is not started"
fi
sudo ip addr show | grep 192 | awk '{print $2}' | cut -d '/' -f '2'


