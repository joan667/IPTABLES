sudo iptables -A INPUT -p tcp --dport 22 -s 192.168.2.0/24 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 22 -j DROP