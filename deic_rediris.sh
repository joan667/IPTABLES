#!/bin/bash
sudo iptables -A FORWARD -d 158.109.79.0/24 -s 192.168.2.0/24 -j ACCEPT
sudo iptables -A FORWARD -p tcp --dport 21 -d ftp.rediris.es -s 192.168.2.0/24 -j ACCEPT
sudo iptables -A FORWARD -s 192.168.2.0/24 -j DROP
