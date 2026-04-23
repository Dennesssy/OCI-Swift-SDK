#!/bin/bash
# Convert Database Service Go files to Swift

SRC_DIR="/Users/denn/Desktop/OCIMain/Oracle-SDK/oci-go-sdk/v65@v65.72.0/database"
DST_DIR="/Users/denn/Desktop/OCIMain/Oracle-SDK/OCI-Swift-SDK/database"
LOG_FILE="/Users/denn/Desktop/OCIMain/Oracle-SDK/.nanobot/database-conversion.log"

mkdir -p "$DST_DIR"
echo "Starting Database service conversion..." > "$LOG_FILE"
echo "Source: $SRC_DIR" >> "$LOG_FILE"
echo "Destination: $DST_DIR" >> "$LOG_FILE"
echo "======================================" >> "$LOG_FILE"

TOTAL=$(ls "$SRC_DIR"/*.go 2>/dev/null | wc -l)
echo "Total Go files: $TOTAL" >> "$LOG_FILE"

echo "First 10 files:" >> "$LOG_FILE"
ls "$SRC_DIR"/*.go 2>/dev/null | head -10 >> "$LOG_FILE"

echo "Conversion ready. See log: $LOG_FILE"
