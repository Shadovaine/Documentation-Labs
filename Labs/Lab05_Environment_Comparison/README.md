---

# Lab05 - Environment Comparison

## 1. Objective

- Execute a Bash script in multiple execution contexts
    - Terminal vs Cron vs Systemd
- Capture environment variables available at  runtime
- Compare environments between terminal, cron, and systemd
- Reinforce defensive scripting practices

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
- User context (root / sudo / user): Non-root with sudo

Note: Although documentation was written from a Kali-Linux workstation, the
concepts and behaviors demonstrated are distribution-agnostic and directly
applicable to RHEL-based systems.

---

## 3. Preconditions

- A Linux OS with Bash installed (`/bin/bash`)
- Script is executed in a non-restricted shell environment
- User account with permission to:
  - Run scripts from the terminal
  - Edit the user crontab
  - Create and run systemd services (sudo access)
- Interactive shell may be zsh; script explicitly executes under bash via
  shebang

---

## 4. Procedure

- Create lab directory structure and output directory
- Create the env_dump.sh script and make it executable
- Execute the script from an interactive terminal and capture the environmental output
- configure a cron job to execute the script and capture the environment output
- Create and run a systemd oneshot service to execute the script and capture the environment output
- Compare the resulting environment files to identify differences between execution contexts

---

## 5. Validation

This lab is considered successful when:
  - terminal.env, cron.env, and systemd.env files are present in the outputs/ directory
  - Each file contains environment variables corresponding to its execution context
  - Differences between the files can be observed using tools such as `diff`
  - The script executes without errors in all contexts

---

## 6. Results

- The interactive terminal execution produced the largest set of environment variables
- The cron execution produced a significantly reduced environment with a minimal PATH
- The systemd execution produced the most restricted environment
- Variables such as PATH, HOME, SHELL, and TERM differed across execuiton contexts.

Detailed observations and comparisons are documented in `notes.md`

---

## 7. Cleanup / Revert

- Remove the cron job created for this lab
- Stop and remove the systemd service created for this lab
- Verify no persistent cron entries or systemd units remain
- No changes to user or system configurations persist after cleanup

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
