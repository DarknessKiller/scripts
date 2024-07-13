#!/bin/bash

# Create a log folder if it doesn't exist
LOG_FOLDER="logs"
mkdir -p "$LOG_FOLDER"

# Remove existing Image and zip files
rm -f ak3/Image
rm -f ak3/*.zip

# Set current epoch time
export CURRENT_EPOCH=$(date +%s)

# Build using specified parameters and capture output to both terminal and file
LTO=thin BUILD_CONFIG=common/build.config.gki.aarch64 build/build.sh 2>&1 | tee "$LOG_FOLDER/build_log_$(date -d @$CURRENT_EPOCH '+%Y%m%d-%H%M%S').log"

# Check the exit status of build.sh
if [ ${PIPESTATUS[0]} -eq 0 ]; then
    # Build was successful, proceed with copying Image and creating zip
    cp out/android12-5.10/dist/Image ak3/
    cd ak3/
    zip -r9 "OverdoseGKI-5.10-$(date -d @$CURRENT_EPOCH '+%Y%m%d-%H%M').zip" * -x .git README.md ./*/placeholder
    cd ..
else
    # Build failed, exit or handle accordingly
    echo "Build failed. Check $LOG_FOLDER/build_log_$(date -d @$CURRENT_EPOCH '+%Y%m%d-%H%M%S').log for details."
    exit 1
fi
