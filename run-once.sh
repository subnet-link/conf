#!/bin/bash
# Run once - init script

# Update packages
apt-get update; apt-get dist-upgrade -y; apt-get autoremove -y --purge; apt-get autoclean

# Install packages
apt-get install -y curl dcfldd htop iptables iptables-persistent tcpdump wget

# Include bash.aliases file in bash.bashrc
echo 'if [ -f /etc/bash.aliases ]; then echo ". /etc/bash.aliases"; fi' >> /etc/bash.bashrc
