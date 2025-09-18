#!/bin/bash
# Script: install_package.sh
# Purpose: Install one or more packages using arguments with basic error handling
# Supports apt (Debian/Ubuntu), yum or dnf (RHEL/CentOS/Fedora)

# Check for at least one argument
if [[ $# -eq 0 ]]; then
    echo "Error: No package name provided."
    echo "Usage: $0 <package1> [package2] ..."
    exit 1
fi

# Detect available package manager
if command -v apt-get >/dev/null 2>&1; then
    PKG_MGR="apt-get"
    UPDATE_CMD="sudo apt-get update -y"
    INSTALL_CMD="sudo apt-get install -y"
elif command -v dnf >/dev/null 2>&1; then
    PKG_MGR="dnf"
    UPDATE_CMD="sudo dnf makecache"
    INSTALL_CMD="sudo dnf install -y"
elif command -v yum >/dev/null 2>&1; then
    PKG_MGR="yum"
    UPDATE_CMD="sudo yum makecache"
    INSTALL_CMD="sudo yum install -y"
else
    echo "Error: No supported package manager found (apt, yum, dnf)."
    exit 1
fi

# Update package index
echo "Updating package list using $PKG_MGR..."
if ! $UPDATE_CMD; then
    echo "Failed to update package list."
    exit 1
fi

# Install each package
for pkg in "$@"; do
    echo "Installing package: $pkg"
    if $INSTALL_CMD "$pkg"; then
        echo "Package '$pkg' installed successfully."
    else
        echo "Failed to install package '$pkg'."
    fi
done

