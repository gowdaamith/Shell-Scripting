#!/bin/bash

### 2. Find all files larger than 100MB in /var/log

set -euo pipefail

DEFAULT_DIR="/var/log"
DEFAULT_SIZE="100M"

DIR="${1:-$DEFAULT_DIR}"
SIZE="${2:-$DEFAULT_SIZE}"

# Check if find command is available
if ! command -v find >/dev/null 2>&1; then
    echo "Error: find command not found" >&2
    exit 1
fi

# Check if the directory exists
if [ ! -d "$DIR" ]; then
    echo "Enter the correct path"
    exit 1
fi

# Check if the directory is readable
if [ ! -r "$DIR" ]; then
    echo "The directory is not readable"
    exit 1
fi

echo "Searching for files larger than $SIZE in $DIR"

find "$DIR" -type f -size +"$SIZE" 2>/dev/null
