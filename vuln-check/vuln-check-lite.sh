#!/bin/bash
# Title: Vuln-Check Lite
# Author: LuX
# Description: Fast local enumeration for privilege escalation.

echo "--- Local Enumeration Started ---"

echo -e "\n[*] System Info:"
uname -a

echo -e "\n[*] Searching for SUID Binaries:"
find / -perm -4000 -type f 2>/dev/null

echo -e "\n[*] Checking for Writable Directories:"
find / -writable -type d 2>/dev/null | grep -v "/proc" | head -n 10

echo -e "\n[*] Checking for sudo -l (passwordless sudo):"
sudo -l -n 2>/dev/null || echo "[-] No passwordless sudo available."

echo -e "\n--- Check Complete ---"
