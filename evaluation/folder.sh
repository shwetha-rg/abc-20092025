#!/bin/bash

# Takes 1 input (0 or 1)
INPUT=$1
TARGET_DIR="/tmp/mycontainerfolder"
TARGET_FILE="$TARGET_DIR/myfile.txt"

if [ "$INPUT" = "1" ]; then
    echo "Creating folder and file..."
    mkdir -p "$TARGET_DIR"
    echo "This is a sample file." > "$TARGET_FILE"
    echo "Folder created at $TARGET_DIR"
    echo "File created at $TARGET_FILE"

elif [ "$INPUT" = "0" ]; then
    echo "Deleting folder(s) at $TARGET_DIR..."
    if [ -d "$TARGET_DIR" ]; then
        rm -rf "$TARGET_DIR"
        echo "Folder deleted."
    else
        echo "No folder found to delete."
    fi

else
    echo "Invalid input! Please provide 0 or 1."
    exit 1
fi

