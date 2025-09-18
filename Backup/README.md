# Backup Files Script

This script makes a compressed backup of any directory.

## How it works
- It creates a file named `backup_YYYY-MM-DD.tar.gz`.
- The file contains everything from the directory you choose.

## Steps to use

1. Open the script `backup_files.sh` in a text editor.  
   Change this line to the folder you want to back up:
   ```bash
   SOURCE_DIR="/path/to/directory"

