sudo hostname jenkins
sudo su - jenkins
sudo yum -y install unzip wget tree git-all -y
sudo wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
sudo yum install jdk-8u131-linux-x64.rpm -y
sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install java-11-openjdk-devel -y
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
cd /etc/yum.repos.d/
sudo curl -O https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo yum -y install jenkins  --nobest
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
#public-ip:8080
#curl ifconfig.co 
#sudo cat /var/lib/jenkins/secrets/initialAdminPassword
