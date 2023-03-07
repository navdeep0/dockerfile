#!/bin/bash

sudo yum install docker -y
sudo yum update -y
sudo yum install httpd -y
sudo yum install nginx -y
sudo yum install squid -y
ls /etc
mkdir /home/ec2-user/mkmk
echo "all done"
