#!/bin/bash
# Run once - init script

# Update packages
apt-get update; apt-get dist-upgrade -y; apt-get autoremove -y --purge; apt-get autoclean

# Install packages
apt-get install dc htop tcpdump

# Include bash.aliases file in bash.bashrc
echo 'if [ -f /etc/bash.aliases ]; then echo ". /etc/bash.aliases"; fi' >> /etc/bash.bashrc
