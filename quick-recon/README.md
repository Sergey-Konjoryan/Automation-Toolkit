# Quick-Recon ⚡

An optimized, two-stage Nmap automation script designed for rapid and stealthy service discovery.

## 🚀 Overview
This script implements a two-phase methodology to balance speed and depth:
1. **Discovery Phase:** Fast identification of open ports using high-speed SYN scanning.
2. **Enumeration Phase:** Detailed service/version detection specifically targeting the discovered ports.

## 🛠️ Key Features
* **Efficiency:** Minimizes network traffic by avoiding detailed scans on closed ports.
* **Automation:** Passes found ports directly to NSE scripts for banner grabbing.
* **Speed:** Designed to bypass slow default Nmap behavior on large port ranges.

### Usage:
1. **Make the script executable:** `chmod +x quick-recon.sh`
2. **Run the scan:** `./quick-recon.sh <TARGET_IP>`
3. **The script will automatically extract open ports and save a detailed report to `recon_result.txt`.**

---
*Note: Always ensure you have authorization to scan the target network.*
