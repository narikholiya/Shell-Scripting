#!/bin/bash

# System Health Check Script

echo "===== CPU Load ====="
uptime

echo -e "\n===== Memory Usage ====="
free -m

echo -e "\n===== Disk Usage ====="
df -h

echo -e "\n===== Top 5 Memory Consuming Processes ====="
ps aux --sort=-%mem | head -n 6

