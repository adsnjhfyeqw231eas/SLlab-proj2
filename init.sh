#!/bin/bash
apt update -y
apt upgrade -y
apt install openjdk-11-jdk openjdk-11-jre docker.io -y
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | tee \      /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
apt update -y
apt install jenkins -y
sleep 3
usermod -aG docker jenkins
