---

## Lab 03 - User Account Lock Script

Every lab README **must** contain the following sections:

### 1. Objective
Create a defensive administrative Bash Script that locks a local user account safely and logs the action.

### 2. Environment
- OS:
- Version:
- Kernel:
- VM/Bare Metal:
- Network mode:
- User context (root / sudo / user): script has to run as root

### 3. Preconditions
- System must be Linux
- Script must be executed as root or via sudo
- Target user must already exist on the system
- Bash shell available at runtime

### 4. Procedure
- Verify the user exists
- Run the script
- Confirm account is locked
- Confirm log entry


### 5. Validation
- Verification of user account is locked
- Verification of log entry with timestamp and operator

### 6. Results
- Script exits if not run as root
- Script exits if user does not exist
- User account becomes locked
- Log entry with timestamp and operator are added

### 7. cleanup / Revert
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
