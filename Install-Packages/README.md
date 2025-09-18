# Install Package Script

A simple Bash script to install one or more packages passed as arguments.  
Supports multiple Linux distributions by automatically detecting the package manager (`apt`, `dnf`, or `yum`).

---

## Features

- Accepts one or more package names as command-line arguments  
- Detects available package manager:
  - `apt` (Debian, Ubuntu)
  - `dnf` (Fedora, RHEL 8+)
  - `yum` (CentOS, RHEL 7)
- Updates the package index before installation  
- Displays clear success or failure messages for each package

---

## Requirements

- Linux system with `apt`, `dnf`, or `yum` installed  
- `sudo` privileges to install packages

---

## Installation

1. Save the script as `install_package.sh`.
2. Make it executable:

   ```bash
   chmod +x install_package.sh

