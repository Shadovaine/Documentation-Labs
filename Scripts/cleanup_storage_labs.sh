#!/bin/zsh
# Jake's Storage & LVM Lab Cleanup Script
# Safe removal of loop devices, LVM stack, fake disks, and  mountpoints

echo "[*] Deactivating and removing LV (if exists)..."
sudo lvchange -an /dev/vg_lab/lv_test 2>/dev/null
sudo lvremove -f /dev/vg_lab/lv_test 2>/dev/null

echo "[*] Deactivating and removing VG (if exists)..."
sudo vgchange -an vg_lab 2>/dev/null
sudo vgremove -f vg_lab 2>/dev/null

echo "[*] Removing PV metadata from loop devices..."
sudo pvremove -ff /dev/loop* 2>/dev/null

echo "[*] Unmounting lab mountpoints..."
sudo umount -R /mnt/lvmtest 2>/dev/null
sudo umount -R /mnt/labfs 2>/dev/null

echo "[*] Removing mount directories..."
sudo rm -rf /mnt/lvmtest /mnt/labfs 2>/dev/null

echo "[*] Detaching all loop devices..."
sudo losetup -D

echo "[*] Removing lab disk images (~/lab-disks)"
rm -rf ~/lab-disks 2>/dev/null

echo "[*] Checking for leftover loop devices..."
losetup -a

echo "[*] Checking for leftover LVM objects..."
sudo pvs
sudo lvs
sudo vgs

echo "[*] Cleanup complete. You are ready for new labs"
