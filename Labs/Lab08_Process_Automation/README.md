---

## Lab 08: File & Process Automation: Poor Man's AIDE

Every lab README **must** contain the following sections:

### 1. Objective
- Design and implement a lightweight file integrity monitoring system
- simulates core functionality of AIDE
- Creates a baseline of file hashes and detecting changes over time

### 2. Environment
- Target OS: Rocky OS
- Documentation OS: Kali OS
- Language: Python 3
- Privileges: Non-root execution
- Target Directory: /srv/projects/alpha
- Version:
- Kernel:
- VM/Bare Metal:
- Network mode:
- User context (root / sudo / user):

### 3. Preconditions
What must exist before starting.

### 4. Procedure
- Walk Directory Tree
- Hash each file
- Save baseline to disk
- Re-scan directory
- Compare against baseline
- Report Changes

### 5. Validation
- Baseline file created successfully
- Modified files are detected
- New files are detected
- Deleted files are reported
- Script exits cleanly with readable output

### 6. Results
What worked, what didn't.

### 7. cleanup / Revert
- Remove test files
- Remove baseline file if needed
- Preserve script for reuse

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
