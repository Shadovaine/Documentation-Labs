# Notes - Lab 01

## Issues Encountered
- None so far

## Observations 
- SELinux status: no
- Filesystem types in use: tmpfs, vfat, squashfs, devtmpfs, efivarfs, ext4
- Systemd-based init confirmed: yes

## Decisions

- Chose read-only inspection to avoid altering baseline state
- Used standard tools available on minimal installations
- Avoided third-party utilities for portability
