---
 
# Lab01 User Management

## 1. Objective

- To successfully Document system baseline and inventory
- User will show how to inspect a Linux system safely
- Collect critical system facts
- Document them clearly and reporoduciby

---

## 2. Environment

- Target OS: Rocky Linux (RHEL-based)
- Target Kernel: Linux 6.12.0-125.28.1.el10_1.x86_64
- Control OS: Kali Linux
- Control Kernel: Linux 6.18.5+kali-amd64
- Version: 2025.4
- Execution Context: Local VMware Workstation
- VM/Bare Metal: NO
- Network mode: NAT
- User context (root / sudo / user): Non-root with sudo
 
 Note: Although documentation was written from a Kali-Linux workstation, the
 concepts and behaviors demonstrated are distribution-agnostic and directly
 applicable to RHEL-based systems.

 ---

## 3. Preconditions

- A Linux Os with Bash installed (`/bin/bash`)
- Script is executed in a non-restricted shell environment
- Interactive shell may be zsh; script explicityly executes under bash via
  shebang

  ---

## 4. Procedure

- Collect OS and kernel information
- Document CPU, memory, and disk layout
- Capture network configuration
- Record active services

---

## 5. Validation

- Information collected matches system state
- No system changes were made

---

## 6. Results

- OS identified and documented
- Hardware resources inventoried
- Network configuration captured
- No system changes made

---

## 7. Cleanup / Revert

None (read-only lab)

---

## Validation Philosophy

Validation is required.
Examples:
- `systemctl status`
- `ss -tulnp`
- `lsblk`
- `getenforce`
- `curl / nc / ping`

No validation = incomplete lab.

---

## Troubleshooting Philosophy

Errors are expected and documented. 
Each issue should include:
- Symptom
- Root cause
- Fix
- Verifcation

---

## Decision Logging

Every non-default or opinionated choice is explained.
Examples: 
- Filesystem selection
- SELinux booleans
- Firewall approach
- Service configuration method

---

## Change Log

Include:
- YYYY-MM-DD
- Lab added:
- Major update:

---

## Ethics & Safety

- No unauthorized access
- No production systems
- All offensive tools used in isolated labs only.

---

## Status 

Active - continuously updated as skills improve.
