sudo iptables -A INPUT -p tcp --dport 80 -s 192.168.2.0/24 -j DROP
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT