#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
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
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo mkdir /home/midterm
cd /home/midterm
sudo wget https://midterm2024cs.s3.us-east-1.amazonaws.com/docker-compose.yml?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEH4aCXVzLWVhc3QtMSJHMEUCIQCPWctK92vGiIyBDUeP07g%2FScLJdJF9XZckxNbo8q%2F2xwIga5kN4wyZQ8Omunf3H3DSspMqv2yVnvWhSOqIDiz%2FySYq7QII9%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAAGgw5NzUwNTAxMTg3NjkiDKz7tAsqMo5LiI%2BY2SrBAiZq4hgm0G7%2FUb6LQw7pFbb3Kc7wW9JfwzeeRum5VPRxz1mhjwiYlrVy%2FX7W0wE8A0JjQTjwtuggRP4vO6rcGveuYKI2taRAEyW1bQe7S5yhiCNjM95X07VjED2rNTw7%2Bc%2FTdXUbVmTb11nCQ0Y0BQgMl06pJqoML5KBl%2BbTc5rtwy9WMtDSIlR1Mz43OCMHi4np03WCgdenULEHWKdKpOBd1edeTGSBgwoWslChAvXTUaRV5T5inTRoY3tuSZrm7awpfcxqayl6IKZsKmirpj5qDz1bgRUNDHBO%2F5UM0Rig5mYBYUd0c1KsLZTwuRuoNAJeNor764oBTkewcVVRDlkp2IEbJV8txZDfCUE%2BbXd92NJGXRjPLPJoZ7J%2BalsvBS6fzRPjRcX%2BoBE76EhGhDSv3Y1YDaw7XSmrted7jnnkHjCmodmyBjqzAnKy6hbPOfz9GafHl3idwoIV5uvzL9%2Bjg0g%2FaVvmEDTAAVVILPHdlRSGLYv48FhZ2Ssxr%2BGQvAjj%2BbbDl6GmSs9E16Z1%2BWR%2BghBWmkDOr62X%2FSEZMmlU1PYYu%2FuUXFoBsugHNdyIetn3qT9NJLjdSdM%2F48f5T7VySOJ%2BXB3KQqDBdT0a5v28zRt5SzI6ZxroAnviqw9RJ1DwQ4KHIVkkYs2hxWpmpgAVpoHdvbEwe0ncT6CL6h34KshoGW5M1fPMw9tBC1k9BM4vKT5JvRiVq5dWo7Wjc%2Bmeq515oljz2%2BUN%2FAcbRFQz%2Bl6VRPwtXOAD8wgntXd0%2FqVUsWaITXGwlejhwLQMlQca2XtQMpJ7PK9thDuHJUiDNrdY96MvqCbFPEAb3TBOIQnj%2FlrAWqXpdlut5Eo%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240529T063226Z&X-Amz-SignedHeaders=host&X-Amz-Expires=43200&X-Amz-Credential=ASIA6GBMECZY5FWRZPUP%2F20240529%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=f841dfd818e2f9e44e0da2f8b936337215b6dd67b9f120fb05b02391f728b2c0
