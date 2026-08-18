#!/bin/bash

echo "======================================"
echo " CyberLab SSH Log Summary"
echo "======================================"

echo
echo "[+] Successful SSH logins:"
sudo journalctl -u ssh --no-pager | grep "Accepted"

echo
echo "[+] Failed SSH authentication:"
sudo journalctl -u ssh --no-pager | grep "Failed"

echo
echo "[+] Pre-authentication connections:"
sudo journalctl -u ssh --no-pager | grep "preauth"

echo
echo "======================================"
echo " Investigation complete"
echo "======================================"
