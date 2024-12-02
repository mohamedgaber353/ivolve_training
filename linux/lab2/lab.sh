#!/bin/bash

# Set threshold percentage
THRESHOLD=100

# Get the disk usage percentage for the root file system
USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

# Email details
TO_EMAIL="20201145@stud.fci-cu.edu.eg"
FROM_EMAIL="your_email@gmail.com"
SUBJECT="Disk Space Alert: Root File System"
MESSAGE="Warning: Disk space usage for the root file system has reached $USAGE%."

# Check if usage exceeds the threshold
if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "$MESSAGE" | mail -s "$SUBJECT" -a "From: $FROM_EMAIL" "$TO_EMAIL"
fi
