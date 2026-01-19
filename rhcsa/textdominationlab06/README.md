---

## Lab 06: Text Domination: awk, sed, cut

Every lab README **must** contain the following sections:

### 1. Objective
- Extract fields from structured text
- Filter log entries based on conditions
- Chain awk, sed, and cut effectively
- Parse authentication logs to identify failed login attempts
- Produce a summarized report of unique IP addresses and counts

### 2. Environment
- OS: Kali Linux
- Shell: zsh
- Log File: /var/log/auth.log
- Version:
- Kernel:
- VM/Bare Metal:
- Network mode:
- User context (root / sudo / user):

### 3. Preconditions
- Read access to /var/log/auth.log
- Basic familiarity with pipes and redirections

### 4. Procedure
- Identify failed login entries in auth.log
- Extract source IP addresses
- Normalize and clean the data stream
- Count unique IP occurences
- Sort results for analysis

### 5. Validation
- Output displays IP addresses with cooresponding failure counts
- Counts accurately reflect number of failures per IP
- Results are reproducible across multiple executions

### 6. Results
- sshd service is active and listening on port 22
- No SSH authentication attempts were recorded in auth.log
- No failed or successful login entries were present during analysis

### 7. Cleanup / Revert
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
