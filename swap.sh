#!/bin/sh
cd /var
touch swap.img
chmod 600 swap.img
dd if=/dev/zero of=/var/swap.img bs=2048k count=1000
mkswap /var/swap.img
swapon /var/swap.img
echo "/var/swap.img    none    swap    sw    0    0" >> /etc/fstab
sysctl -w vm.swappiness=30
free


chmod +x to file
