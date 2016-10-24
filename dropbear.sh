# install dropbear


apt-get -y install dropbear

sed -i 's/NO_START=1/NO_START=0/g' /etc/default/dropbear

sed -i 's/DROPBEAR_PORT=22/DROPBEAR_PORT=443/g' /etc/default/dropbear

sed -i 's/DROPBEAR_EXTRA_ARGS=/DROPBEAR_EXTRA_ARGS="-p 53"/g' /etc/default/dropbear

echo "/bin/false" >> /etc/shells

service ssh restart

service dropbear restart

#thanks to piratebhai
