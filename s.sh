#!/bin/bash

sudo yum install docker -y
sudo yum update -y
sudo yum install httpd -y
sudo yum install nginx -y
sudo yum install squid -y
ls /etc
mkdir /home/ec2-user/mkmk
echo "all done"
ssh -oHostKeyAlgorithms=+ssh-dss -i x.pem ec2-user@abc.com
ssh -i x.pem -o StrictHostKeyChecking=no -t ec2-user@{variable} "sudo -i bash -c '/tmp/xyz.sh'"
