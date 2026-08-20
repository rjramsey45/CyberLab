#!/bin/bash

LOG="/var/log/apache2/access.log"
ERROR_LOG="/var/log/apache2/error.log"

REPORT_TIME=$(date '+%Y-%m-%d %H:%M:%S %Z')

echo "======================================"
echo " CyberLab Web Server Security Check"
echo "======================================"
echo
echo "[+] Report Generated"
echo "$REPORT_TIME"
echo
echo "[+] Apache Service"
sudo systemctl is-active apache2

echo
echo "[+] Listening HTTP Services"
sudo ss -tulpn | grep ':80'

echo
echo "[+] Recent HTTP Requests"
sudo tail -n 20 "$LOG"

echo
echo "[+] HTTP Status Code Summary"
sudo awk '{print $9}' "$LOG" | sort | uniq -c | sort -nr

echo
echo "[+] Top Source IP Addresses"
sudo awk '{print $1}' "$LOG" | sort | uniq -c | sort -nr | head -10

echo
echo "[+] Most Requested Paths"
sudo awk -F'"' '{print $2}' "$LOG" | awk '{print $2}' | sort | uniq -c | sort -nr | head -10

echo
echo "[+] Potential HTTP Errors"
sudo awk '$9 >= 400 {print}' "$LOG" | tail -n 20

echo
echo "[+] Apache Error Log"
sudo tail -n 20 "$ERROR_LOG"

echo
echo "======================================"
echo " Web Server Check Complete"
echo "======================================"
