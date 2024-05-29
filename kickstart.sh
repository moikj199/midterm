#!/bin/bash
#update server
sudo apt-get update
sudo apt-get upgrade -y
#Add Docker's GPG key
sudo apt-get install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
#install Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
#create new directory
sudo mkdir /home/midterm
#navigate to new directory
cd /home/midterm
#pull yaml file from S3 bucket
sudo wget http://midterm2024cs.s3.amazonaws.com/docker-compose.yml
#spin up wordpress container
sudo docker compose up -d
