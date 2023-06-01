# Git Repo README
This repository contains three different folders that provide the necessary resources for setting up a web development environment using Docker and Jenkins. The folders include:

apache-web-server: This folder contains the Dockerfile required to build an Apache web server container. The Apache web server is a popular open-source web server software that provides a reliable platform for hosting websites and web applications.

jenkins-container: This folder includes the Dockerfile required to build a Jenkins container. Jenkins is an open-source automation server that facilitates the continuous integration and delivery (CI/CD) process for software development. Additionally, this folder also contains a Jenkinsfile that defines a pipeline for deploying HTML files from another repository to the Apache web server.

linux-vm-startup-script: This folder contains a startup script for a Linux virtual machine (VM). The script automates the process of installing Docker and creating the necessary Docker images and containers for the Apache web server and Jenkins. The startup script simplifies the setup and configuration process by reducing manual intervention.

# Instructions for Setting Up the Web Development Environment
To set up the web development environment using this repository, follow the steps below:

# 1. Clone the Repository
Clone this repository to your local machine using the following command:

```shell
git clone https://github.com/benjamindavisdc/DockerInfrastructureFiles.git
'''

# 2. Build the Apache Web Server Container
Navigate to the apache-web-server folder and build the Apache web server container using the provided Dockerfile. Execute the following command:

```shell
cd apache-web-server
docker build -t apache-web-server .
```
This command will build the Docker image for the Apache web server and tag it as apache-web-server.

# 3. Build the Jenkins Container
Navigate to the jenkins-container folder and build the Jenkins container using the provided Dockerfile. Run the following command:

```shell
cd ../jenkins-container
docker build -t jenkins-container .
```
This command will build the Docker image for Jenkins and tag it as jenkins-container.

# 4. Configure Jenkins Pipeline
The Jenkinsfile in the jenkins-container folder defines a pipeline for deploying HTML files from another repository to the Apache web server. Before running the pipeline, configure Jenkins to connect to your repository containing the HTML files. Additionally, make sure to set up appropriate credentials for accessing the repository.

# 5. Run the Linux VM Startup Script
Navigate to the linux-vm-startup-script folder and run the startup script on your Linux VM. Execute the following command:

```shell
cd ../linux-vm-startup-script
chmod +x startup-script.sh
./startup-script.sh
```
This script automates the installation of Docker and the creation of Docker images and containers for the Apache web server and Jenkins.

# Conclusion
By following the above steps, you will have successfully set up a web development environment using Docker and Jenkins. The Apache web server container will be ready to host your websites and web applications, and the Jenkins pipeline will automate the deployment process.
