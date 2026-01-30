---
 
## Lab 01: System Baseline & Inventory

Every lab README **must** contain the following sections:

### 1. Objective
- To successfully Document system baseline and inventory
- User will show how to inspect a Linux system safely
- Collect critical system facts
- Document them clearly and reporoduciby

### 2. Environment
- OS: Kali Linux
- Version:
- Kernel:
- VM/Bare Metal:
- Network mode:
- User context (root / sudo / user):
 
### 3. Preconditions
- System is powered on
- User has read-only access
- No configuration changes allowed

### 4. Procedure
- Collect OS and kernel information
- Document CPU, memory, and disk layout
- Capture network configuration
- Record active services

### 5. Validation
- Information collected matches system state
- No system changes were made

### 6. Results
- OS identified and documented
- Hardware resources inventoried
- Network configuration captured
- No system changes made

### 7. cleanup / Revert   
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
