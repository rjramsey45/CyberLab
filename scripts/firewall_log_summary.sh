#!/bin/bash

echo "======================================"
echo " CyberLab Firewall Security Check"
echo "======================================"

echo
echo "[+] UFW Status"
sudo ufw status verbose

echo
echo "[+] Numbered Firewall Rules"
sudo ufw status numbered

echo
echo "[+] Listening Network Services"
sudo ss -tulpn

echo
echo "[+] Current Network Connections"
sudo ss -tunap

echo
echo "======================================"
echo " Firewall Check Complete"
echo "======================================"
