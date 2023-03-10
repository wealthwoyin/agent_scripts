 

#! /bin/bash

#Description  : jenkins installation script
#Author       : Ayo
#Date         : March 2023

#Update Server before Jenkins Installation
sudo yum update -y

#Installing Java

sudo yum install java-1.8.0-openjdk-devel
sleep 2

#Enabling the Jenkins repository
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo

#Add the repository to your system
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

#Once the repository is enabled, install the latest stable version:
sudo yum install jenkins

#After the installation process is completed, start the Jenkins service:
sudo systemctl start jenkins

#check the status of jenkins:
systemctl status jenkins

#Finally enable the Jenkins service to start on system boot.
sudo systemctl enable jenkins
echo "jenkins installed and started successfully"

#Then Adjust the Firewall
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload
 
 echo "installtion completed"