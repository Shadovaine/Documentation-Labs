---

# Lab04 - World Writable Audit

## 1. Objective

- Audit the /etc directory to identify world-writable files
- Output the results to a file
- Sort them for review. 

This lab reinforces secure permission auditing using loops, conditionals, and file tests in Bash.

---

## 2. Environment

- Target OS: Rocky Linux (RHEL-based)
- Target Kernel: Linux 6.12.0*124.28.1.el10_1.x86_64
- Control OS: Kali Linux
- Control Kernel: Linux 6.185.5+kali-amd64
- Version: 2025.4
- Execution Context: Local VMware Workstation
- VM/Bare Metal: NO
- Network mode: NAT
- User context (root / sudo / user): Non-root with sudo access

Note: Although documnetation was written from a Kali-Linux workstation, the
concepts and behaviors demonstrated are distribution-agnostic and directly
applicable to RHEL-based systems.

---

## 3. Preconditions

- A Linux OS with Bash installed (`/bin/bash`)
- User has read access to /etc
- Script executed as a non-destructive environment
- Interactive shell may be zsh; script explicitly executes under bash via
  shebang

---

## 4. Procedure

- Create the script
- Make script executable
- Execute the Audit

---

## 5. Validation

- Confirm output exists and is sorted

---

## 6. Results

- Expected Behavior
    - File exists
    - Output is alphabetically sorted
    - Each line shows:
      - File path
      - Octal permission value

---

## 7. Cleanup / Revert

- run `rm` command to delete files

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
