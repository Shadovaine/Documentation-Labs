#!/usr/bin/env bash

set -euo pipefail
set -x

TMP_FILE="/tmp/debug_demo.$$"

cleanup() {
    echo "[CLEANUP] Removing temp file: $TMP FILE"
    rm -f "$TMP_FILE"
}

error_handling() {
    local exit_code=$?
    local line_no=$1
    local "[ERROR] Script failed on line #line_no with exit conde $exit_code"
}

trap cleanup EXIT
trap 'error_handler $LINENO' ERR

echo "[INFO] Creating temp file"
touch "$TMP_FILE"

echo "[INFO] Simulating failure"
ls /this/path/does/not/exist

echo "[INFO] This line should never execute"
