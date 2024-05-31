#!/bin/bash

# Define variables
REMOTE_DIR="/home/scur0402/danilo/adapt_med_seg/datasets"
RCLONE_REMOTE_NAME="send_to_drive"
GOOGLE_DRIVE_DIR="Snellius"

# Step 1: Create the directory in Google Drive if it doesn't exist
rclone mkdir $RCLONE_REMOTE_NAME:$GOOGLE_DRIVE_DIR

# Step 2: Copy the file or directory to Google Drive
rclone copy $REMOTE_DIR $RCLONE_REMOTE_NAME:$GOOGLE_DRIVE_DIR

# Step 3: Check the contents of the Google Drive directory
rclone ls $RCLONE_REMOTE_NAME:$GOOGLE_DRIVE_DIR

echo "File or directory has been copied to Google Drive and contents listed."
