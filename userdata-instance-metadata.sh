#!/bin/bash 
yum -y update
yum -y install httpd php
chkconfig httpd on
wget http://assets.awsedu.com/global/instance-metadata.zip
unzip instance-metadata.zip
chown -Rf apache:apache instance-metadata
cp -rf --preserve=owner instance-metadata/* /var/www/html/
service httpd start
