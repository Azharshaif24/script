#!/bin/bash
sudo systemctl stop apache2
sleep 3
#sudo tar -cvf test{1..}.zip /var/www/html*  ///facing issue
sudo cp -r /home/vagrant* /var/www/html
sleep 1
sudo systemctl start apache2
sudo systemctl enable apache2
sleep 2
if [ $? -eq 0 ]
then
        echo " Apache server is running properly"
else
        echo " Apache server is not running"
fi
sudo ip addr show | grep 192 | awk '{print $2}' | cut -d '/' -f '1'
