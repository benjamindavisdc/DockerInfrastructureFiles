sudo yum update
sudo amazon-linux-extras install java-openjdk11
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo yum --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo tee /etc/yum.repos.d/jenkins.repo <<EOL
[jenkins]
name=Jenkins
baseurl=https://pkg.jenkins.io/redhat-stable
gpgcheck=1
EOL
sudo yum install jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

#Retrieve the initial Jenkins administrator password:
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

#sudo systemctl status jenkins

Pipeline1
test7pipeline1
