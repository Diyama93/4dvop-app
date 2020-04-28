#!bin/bash
sudo yum install ntp -y
sudo systemctl start ntpd
systemctl enable ntpd
sudo systemctl enable ntpd
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker centos
sudo systemctl enable docker
sudo systemctl start docker
sudo yum -y install bash-completion
sudo curl https://raw.githubusercontent.com/docker/docker-ce/master/components/cli/contrib/completion/bash/docker -o /etc/bash_completion.d/docker.sh
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
cd 4dvop-app/02_docker 
docker-compose up
