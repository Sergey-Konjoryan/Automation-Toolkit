
# Vuln-Check Lite 🔍

A lightweight Bash script designed for rapid local enumeration of Linux systems to identify privilege escalation vectors.

## 🚀 Overview
Once initial access is gained, this script automates the "first look" at the system environment to find common misconfigurations before deploying heavier tools.

## 🛠️ Key Features
* **SUID Detection:** Scans for binaries with the SUID bit set for potential root exploits.
* **Permission Audit:** Identifies world-writable folders and critical system files.
* **Fast Execution:** Non-intrusive and requires no external dependencies.

### Usage:
1. **Make the script executable:** `chmod +x vuln-check-lite.sh`
2. **Run the script:** `./vuln-check-lite.sh`
3. **The script will scan for SUID bits, writable directories, and sudo permissions, outputting the results to your terminal.**

---
*Note: This tool is intended for authorized security auditing and educational purposes only.*
