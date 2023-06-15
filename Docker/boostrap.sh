#!/bin/bash

# Update the system
sudo apt update -y

# Install required packages
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Add Docker repository GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add Docker repository
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the package lists
sudo apt update -y

# Install Docker
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add the current user to the docker group
sudo usermod -aG docker $USER

# Display Docker version
docker version

# Create a Docker network
docker network create my-network

# Navigate to the Apache Dockerfile directory
cd /tmp/docker/apache

# Build Apache image
sudo docker build -t my-apache-image .

# Navigate to the Jenkins Dockerfile directory
cd /tmp/docker/jenkins

# Build Jenkins image
sudo docker build -t my-jenkins-image .

# Run Apache container
docker run --name my-apache-container -p 80:80 --network my-network -d my-apache-image

# Run Jenkins container
docker run --name my-jenkins-container -p 8080:8080 --network my-network -d my-jenkins-image
