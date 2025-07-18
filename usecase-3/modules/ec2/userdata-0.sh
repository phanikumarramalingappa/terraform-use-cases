#!/bin/bash
sudo su
yum update -y
yum install docker -y
service docker start
systemctl enable docker
sleep 10
docker run -d -p 80:80 -e OPENPROJECT_SECRET_KEY_BASE=secret -e OPENPROJECT_HOST__NAME=0.0.0.0:80 -e OPENPROJECT_HTTPS=false openproject/community:12