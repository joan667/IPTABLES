//workstations
#!/bin/bash
iptables -t mangle -A OUTPUT -m owner --uid-owner 999 -j TOS --set-tos 0x10
iptables -t mangle -A OUTPUT -m owner --uid-owner 998 -j TOS --set-tos 0x20
