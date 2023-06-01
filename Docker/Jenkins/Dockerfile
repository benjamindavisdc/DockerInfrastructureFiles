# Use the official Amazon Linux 2 as the base image
FROM jenkins/jenkins:lts

# Switch to the root user
USER root

# Install Java OpenJDK 11 and other required packages
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    rm -rf /var/lib/apt/lists/*

# Create a directory for the Jenkinsfile in the container
RUN mkdir -p /var/jenkins

# Copy your existing Jenkinsfile to the container
COPY Jenkinsfile /var/jenkins/Jenkinsfile

# Expose port 8080 for accessing the Jenkins server
# Expose port 443 for git clone
EXPOSE 443
EXPOSE 8080