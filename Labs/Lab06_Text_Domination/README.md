---

# Lab06 - Text Domination using awk, sed, cut

## 1. Objective

- Extract fields from structured text
- Filter log entries based on conditions
- Chain awk, sed, and cut effectively
- Parse authentication logs to identify failed login attempts
- Produce a summarized report of unique IP addresses and counts

---

## 2. Environment

- Target OS: Rocky Linux (RHEL-based)
- Target Kernel: Linux 6.12.0-124.28.1.el10_1.x86_64
- Control OS: Kali Linux
- Control Kernel: Linux 6.18.5+kali-amd64
- Version:2025.4
- Execution Context: Local VMware Workstation 
- VM/Bare Metal: NO
- Network mode: NAT
- User context (root / sudo / user): Non-root with sudo

---

## 3. Preconditions

- A Linux OS with Bash installed (`/bin/bash`)
- Read access to /var/log/auth.log
- Interactive shell may be zsh; script explicitly executes under bash via
  shebang

---

## 4. Procedure

- Identify failed login entries in auth.log
- Extract source IP addresses
- Normalize and clean the data stream
- Count unique IP occurrences
- Sort results for analysis

---

## 5. Validation

- Output displays IP addresses with cooresponding failure counts
- Counts accurately reflect number of failures per IP
- Results are reproducible across multiple executions

---

## 6. Results

- sshd service is active and listening on port 22
- No SSH authentication attempts were recorded in auth.log
- No failed or successful login entries were present during analysis

---

## 7. Cleanup / Revert

- No system changes made
- No files created outside lab directory

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
