#!/bin/bash

# Build and run Apache container
docker build -t my-apache-server /path/to/apache-dockerfile
docker run -d -p 80:80 my-apache-server

# Build and run Jenkins container
docker build -t my-jenkins-server /path/to/jenkins-dockerfile
docker run -d -p 8080:8080 my-jenkins-server
