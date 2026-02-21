# Auto-Ligolo 🌉

A specialized automation script for setting up **Ligolo-ng** TUN interfaces. This tool eliminates the repetitive manual commands required to establish a pivoting interface during network penetration tests.

## 🚀 Overview
When performing pivoting and lateral movement, setting up the `ligolo` interface is a mandatory step. This script automates the creation and activation of the TUN device, ensuring a seamless connection to your proxy server.

## 🛠️ Key Features
* **Automated TUN Creation:** Instantly creates the `ligolo` tap device.
* **Privilege Validation:** Checks for root/sudo permissions before execution.
* **Environment Setup:** Automatically sets the interface state to UP for immediate use.

## Usage:
1. **Make the script executable:** `chmod +x auto-ligolo.sh`
2. **Run with sudo:** `sudo ./auto-ligolo.sh`
3. **The script will create a `ligolo` interface and set it to UP.**

---
*Note: This script is designed for use on Linux-based attack machines (Kali, BlackArch).*
