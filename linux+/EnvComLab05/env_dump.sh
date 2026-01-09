#!/usr/bin/env bash

# Fail fast and safely
set -euo pipefail

# Define output directory relative to script location
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT_DIR="$SCRIPT_DIR/outputs"

# Ensure output directory exists
mkdir -p "$OUTPUT_DIR"

# Validate argument
if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <context-name>"
  exit 1
fi

CONTEXT="$1"

# Dump Environment
env | sort > "$OUTPUT_DIR/${CONTEXT}.env"
