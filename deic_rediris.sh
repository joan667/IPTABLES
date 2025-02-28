sudo iptables -A OUTPUT -d 158.109.79.0/24 -j ACCEPT
sudo iptables -A OUTPUT -p tcp --dport 21 -d ftp.rediris.es -j ACCEPT
sudo iptables -A OUTPUT -j DROP