#!/bin/bash
# Title: Auto-Ligolo Interface Setup
# Author: LuX
# Description: Automates the creation of TUN interface for Ligolo-ng.

if [[ $EUID -ne 0 ]]; then
   echo "[-] This script must be run as root (use sudo)"
   exit 1
fi

INTERFACE="ligolo"

echo "[*] Starting Ligolo-ng interface setup..."

ip tuntap add user $(logname) mode tun $INTERFACE
echo "[+] TUN interface '$INTERFACE' created."

ip link set $INTERFACE up
echo "[+] Interface '$INTERFACE' is now UP."

echo "[*] Setup complete. You can now start your proxy server."
