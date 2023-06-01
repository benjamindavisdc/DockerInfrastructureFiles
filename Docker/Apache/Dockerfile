# Use the official Amazon Linux 2 as the base image
FROM amazonlinux:2

# Install Git to clone the repository
RUN yum update -y && \
    yum install -y git && \
    yum clean all

# Clone the repository into a temporary directory
RUN git clone https://github.com/benjamindavisdc/may23pipeline01 /tmp/repository

# Install Apache web server and other required packages
RUN yum install -y httpd && \
    yum clean all

# Copy the contents from the cloned repository to the appropriate location
RUN cp -R /tmp/repository/* /var/www/html/

# Expose port 80 for incoming HTTP traffic
EXPOSE 80

# Start the Apache web server when the container launches
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
