#!/bin/bash
# Run once - init script

# Update packages
apt-get update; apt-get dist-upgrade -y; apt-get autoremove -y --purge; apt-get autoclean

# Install packages
apt-get install -y curl dcfldd htop iptables iptables-persistent tcpdump wget

# Download and include bash.aliases file in bash.bashrc
wget --secure-protocol=TLSv1 --https-only -O /etc/bash.aliases https://raw.githubusercontent.com/subnet-link/conf/master/bash.aliases
echo 'if [ -f /etc/bash.aliases ]; then echo ". /etc/bash.aliases"; fi' >> /etc/bash.bashrc

# Download and include Hack font
wget --secure-protocol=TLSv1 --https-only -O /tmp/hack.zip https://github.com/chrissimpkins/Hack/releases/download/v2.015/Hack-v2_015-ttf.zip
mkdir -pv /usr/share/fonts/truetype/hack
unzip /tmp/hack.zip -d /usr/share/fonts/truetype/hack
fc-cache -vf 
rm -vf /tmp/hack.zip

