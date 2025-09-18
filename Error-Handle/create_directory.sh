#!/bin/bash
# Script: create_directory.sh
# Purpose: Create a directory with error handling

# Prompt user for directory name
read -p "Enter the name of the directory you want to create: " dir_name

# Check if input is empty
if [[ -z "$dir_name" ]]; then
    echo "❌ Error: Directory name cannot be empty."
    exit 1
fi

# Check for invalid characters (allow letters, numbers, underscore, dash)
if [[ ! "$dir_name" =~ ^[a-zA-Z0-9_-]+$ ]]; then
    echo "❌ Error: Directory name contains invalid characters."
    echo "Allowed characters: letters, numbers, underscore (_), dash (-)"
    exit 1
fi

# If directory already exists
if [[ -d "$dir_name" ]]; then
    echo "ℹ️  Directory '$dir_name' already exists."
    exit 0
fi

# Try to create directory
if mkdir "$dir_name" 2>/dev/null; then
    echo "✅ Directory '$dir_name' created successfully."
else
    echo "❌ Error: Failed to create directory. Check your permissions."
    exit 1
fi
