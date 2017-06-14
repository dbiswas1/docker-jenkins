#Install jenkins
#!/bin/bash
apt-get -y update
apt-get install -y software-properties-common
add-apt-repository ppa:openjdk-r/ppa
apt-get -y update
apt-get install -y openjdk-8-jdk apt-transport-https
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -
echo 'deb https://pkg.jenkins.io/debian-stable binary/'
deb https://pkg.jenkins.io/debian-stable binary/ | tee -a /etc/apt/sources.list
apt-get update
apt-get install jenkins

apt-get install -y openssh-server 
ssh-keygen -A
useradd test
#echo -e "test\ntest" | passwd test

