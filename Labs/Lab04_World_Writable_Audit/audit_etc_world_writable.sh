#!/usr/bin/env bash

# Lab 04 - Audit World-Writable Files in /etc
# Author: ShadoVaine
# Purpose: Identify insecure file permissions
# Date: $(date)

OUTPUT_FILE="world_writable_etc_files.txt" > "$OUTPUT_FILE"

for item in /etc/*; do
    if [[ -f "$item" && -w "$item" ]]; then
        perms=$(stat -c "%a" "$item")
        others_perm=${perms: -1}

        if [[ "$others_perm" -ge 2 ]]; then
            echo "$item ($perms)" >> "$OUTPUT_FILE"
        fi
     fi
done

sort "$OUTPUT_FILE" -o "$OUTPUT_FILE"

echo "Audit complete. REsults saved to $OUTPUT_FILE"
