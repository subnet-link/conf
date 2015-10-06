#!/bin/bash
# Run once - init script

# Update packages
apt-get update; apt-get dist-upgrade -y; apt-get autoremove -y --purge; apt-get autoclean

# Install packages
apt-get install -y curl dcfldd htop iptables iptables-persistent tcpdump wget

# Download and include bash.aliases file in bash.bashrc
wget --secure-protocol=TLSv1 --https-only -O /etc/bash.aliases https://raw.githubusercontent.com/subnet-link/conf/master/bash.aliases
echo 'if [ -f /etc/bash.aliases ]; then echo ". /etc/bash.aliases"; fi' >> /etc/bash.bashrc
