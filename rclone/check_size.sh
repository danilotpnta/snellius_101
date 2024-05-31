#!/bin/bash

# Define variables
RCLONE_REMOTE_NAME="send_to_drive"
GOOGLE_DRIVE_DIR="Snellius/MSD"

# Get the size of the directory
SIZE_IN_BYTES=$(rclone size --json $RCLONE_REMOTE_NAME:$GOOGLE_DRIVE_DIR | jq .bytes)

# Convert bytes to gigabytes
SIZE_IN_GB=$(echo "scale=2; $SIZE_IN_BYTES / (1024 * 1024 * 1024)" | bc)

# Output the size
echo "The size of the directory '$GOOGLE_DRIVE_DIR' is $SIZE_IN_GB GB."
