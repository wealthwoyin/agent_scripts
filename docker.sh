#!/bin/bash

#Description : Docker installation script
#Author      : Ayo
#Date        : March 2023


#Remove all old versions of docker
sudo yum remove docker docker-common docker-selinux docker-engine

#Install required packages
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

#Configure docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

#Install Docker-ce
sudo yum install docker-ce -y

#Start Docker
sudo systemctl start docker
sudo systemctl enable docker

echo "docker installed and started successfully"