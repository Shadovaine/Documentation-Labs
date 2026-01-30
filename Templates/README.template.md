---

## Lab README Template

Every lab README **must** contain the following sections:

### 1. Objective
What this lab proves I can do.

### 2. Environment
- OS:
- Version:
- Kernel:
- VM/Bare Metal:
- Network mode:
- User context (root / sudo / user):

### 3. Preconditions
What must exist before starting.

### 4. Procedure
High-level steps (commands go in 'commands.md').

### 5. Validation
How success was verified.

### 6. Results
What worked, what didn't.

### 7. cleanup / Revert
How to safely undo the lab.

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
