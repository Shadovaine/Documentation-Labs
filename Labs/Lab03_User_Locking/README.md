---

# Lab03 User Locking

## 1. Objective

- Create a defensive administrative Bash Script that locks a local user account safely and logs the action.

---

## 2. Environment

- Target OS: Rocky Linux (RHEL-based)
- Target Kernel: Linux 6.12.0-124.28.1.el10_1.x86_64
- Control OS: Kali Linux
- Control Kernel: Linux 6.18.5+kali-amd64
- Version: 2025.4
- Execution Context: Local VMware Workstation
- VM/Bare Metal: NO
- Network mode: NAT
- User context (root / sudo / user): script has to run as root

Note: Although documentation was written from a Kali-Linux workstation, the
concepts and behaviors demonstrated are distribution-agnostic and directly
applicable to RHEL-based systems.

---

## 3. Preconditions

- A Linux OS with Bash installed (`/bin/bash`)
- Script is executed in a non-restricted shell environment
- Interactive shell may be zsh; script explicityly executes under bash via
  shebang

---

## 4. Procedure

- Verify the user exists
- Run the script
- Confirm account is locked
- Confirm log entry


## 5. Validation

- Verification of user account is locked
- Verification of log entry with timestamp and operator

---

## 6. Results

- Script exits if not run as root
- Script exits if user does not exist
- User account becomes locked
- Log entry with timestamp and operator are added

---

## 7. Cleanup / Revert

- Unlock the account - see commands.md for unlocking command

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
- Verification

---

## Decision Logging

Every non-default or opinionated choice is explained.

Examples: 
- File system selection
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
