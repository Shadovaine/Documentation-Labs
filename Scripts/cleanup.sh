#!/bin/bash

echo "===== CLEANING LAB FILES ====="

# Week-1 lab artifacts
rm -f ~/words.txt
rm -f ~/errors.log
rm -f ~/secret.txt

# ACL labs
rm -rf ~/acltest

# Systemd test service
sudo rm -f /etc/systemd/system/lab-simple.service
sudo systemctl daemon-reload

# LVM + storage labs
rm -f ~/lab-disks/disk*.img
rm -f ~/lab-disks/*.img
rm -f ~/lab-disks/*.loop

# Misc folders
rm -rf ~/labtest
rm -rf ~/labtemp
rm -rf ~/lab*

# Trash cleanup
rm -rf ~/.local/share/Trash/*

echo "===== DONE ====="
