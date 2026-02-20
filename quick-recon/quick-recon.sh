#!/bin/bash
# Title: Quick-Recon
# Author: LuX
# Description: Optimized two-stage Nmap scanner.

TARGET=$1

if [ -z "$TARGET" ]; then
    echo "Usage: $0 <IP_ADDRESS>"
    exit 1
fi

echo "[*] Phase 1: Rapid port discovery on $TARGET..."

PORTS=$(nmap -p- --min-rate 1000 -T4 $TARGET | grep ^[0-9] | cut -d '/' -f 1 | tr '\n' ',' | sed 's/,$//')

if [ -z "$PORTS" ]; then
    echo "[-] No open ports found on $TARGET."
    exit 1
fi

echo "[+] Found open ports: $PORTS"
echo "[*] Phase 2: Detailed service enumeration..."

nmap -sC -sV -p$PORTS $TARGET -oN recon_result.txt

echo "[+] Scan finished. Results saved in 'recon_result.txt'."
