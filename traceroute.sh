#!/bin/bash
sudo iptables -A INPUT -p udp --dport 33434:33564 -j DROP
