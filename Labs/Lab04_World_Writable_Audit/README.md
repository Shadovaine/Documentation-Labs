---

## Lab 04 - Audit: World-Writable Files in /etc

Every lab README **must** contain the following sections:

### 1. Objective
Audi the /etc directory to identify world-writable files, output the results to a file, and sort them for review. This lab reinforces secure permission auditing using loops, conditionals, and file tests in Bash.

### 2. Environment
- OS:
- Version:
- Kernel:
- VM/Bare Metal:
- Network mode:
- User context (root / sudo / user):

### 3. Preconditions
- User has read access to /etc
- Script executed as a non-destructive audit
- Bash shell available (/sur/bin/env bash)
- No SELinux restriction blocking stat

### 4. Procedure
- create the script
- Make script executable
- Execute the Audit

### 5. Validation
- Confirm output exists and is sorted


### 6. Results
- Expected Behavior
    - File exists
    - Output is alphabetically sorted
    - Each line shows:
      - File path
      - Octal permission value

### 7. cleanup / Revert
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
