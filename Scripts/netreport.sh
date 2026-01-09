#!/bin/zsh

echo "===InterFaces==="
ip a

echo -e "\n=== Routes ==="
ip r

echo -e "\n=== DNS ==="
cat /etc/resolv.conf

echo -e "\n=== NMCLI ACTIVE ==="
nmcli con show --active

echo -e "\n=== Neightbor (ARP CACHE) ==="
ip neigh

