#!/bin/bash
# Script: disk_usage_report.sh
# Purpose: Generate disk usage report with timestamped filename

# Get current date and time
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Set filename with timestamp
REPORT_FILE="disk_usage_report_$TIMESTAMP.txt"

# Run disk usage command and save to file
if df -h > "$REPORT_FILE" 2>/dev/null; then
    echo "Disk usage report created successfully: $REPORT_FILE"
else
    echo "Error: Failed to create disk usage report. Check permissions."
    exit 1
fi

