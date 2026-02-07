---

# Lab07 - Multi-User Permissions & Access Control

## 1. Objective

- To simulate a realistic multi-user Linux environment
- Practice user, group, and permission management

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
- Shell: Bash 
- User context (root / sudo / user): Non-root with sudo, or root when applicable

> Note: Although documentation was written from a Kali-Linux workstation, the
> concepts and behaviors demonstrated are distribution-agnostic and directly
> applicable to RHEL-based systems. 

---

## 3. Preconditions

- Rocky Linux VM is running and accessible
- Root or sudo privileges are available
- No existing users or groups conflict with lab names
- Documentation directory structure has been created on Kali

---

## 4. Procedure

## Phase 1

- Focuses on standard UNIX permissions and group-based access control
- Creating and analyzing permission failures
- Create user groups for different teams
- create users and assign the to appropriate groups
- Create a shared project directory
- Apply group ownership and setgid permissions
- Test access as multiple users
- Observe and document permission failures

---

## 5. Validation & Results

- Engineering users can create files in the shared directory
- Operations users receive permission denied errors
- Group ownership inheritance functions as expected
- Setgid behavior is confirmed on newly created files

---

## 7. Cleanup / Revert

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
