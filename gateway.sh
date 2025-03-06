//gateway
#!/bin/bash
iptables -A FORWARD -i eth0 -o eth1 -j ACCEPT
iptables -A FORWARD -i eth1 -o eth0 -j ACCEPT
iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE
/sbin/sysctl -w net.ipv4.conf.all.forwarding=1
/sbin/sysctl -w net.ipv4.conf.eth0.forwarding=1
/sbin/sysctl -w net.ipv4.conf.eth1.forwarding=1
sysctl -p

iptables -t mangle -A PREROUTING -m tos --tos 0x10 -j DROP
iptables -t mangle -A PREROUTING -m tos --tos 0x20 -j DROP

#a revisar
iptables -t mangle -A PREROUTING -p tcp -m tos --tos 0x20 -j LOG --log-prefix "[IPTABLES - USER2]" --log-level info
iptables -t mangle -A PREROUTING -p tcp -m tos --tos 0x10 -j LOG --log-prefix "[IPTABLES - USER1]" --log-level info
