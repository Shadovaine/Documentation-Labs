---

## Lab 07: Multi-User Permissions & Access Control

Every lab README **must** contain the following sections:

### 1. Purpose
- To simulate a realistic multi-user Linux environment
- Practice user, group, and permission management

### Phase 1
- Focuses on standard UNIX permissions and group-based access control
- Creating and analyzing permission failures

### 2. Environment
- OS: Rocky Linux
- Version:
- Kernel:
- VM/Bare Metal: VMware Workstation
- Network mode:
- User context (root / sudo / user): multi-user

### 3. Preconditions
- Rocky Linux VM is running and accessible
- Root or sudo privileges are available
- No existing users or groups conflict with lab names
- Documentation directory structure has been created on Kali

### 4. Procedure
- Create user groups for different teams
- create users and assign the to appropriate groups
- Create a shared project directory
- Apply group ownership and setgid permissions
- Test access as multiple users
- Observe and document permission failures

### 5. Validation & Results
- Engineering users can create files in the shared directory
- Operations users receive permission denied errors
- Group ownership inheritance functions as expected
- Setgid behavior is confirmed on newly created files

### 7. cleanup / Revert
- No cleanup actions are performed at the end of Phase 1
- Users, groups, and directories preserved for continuation of lab

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
