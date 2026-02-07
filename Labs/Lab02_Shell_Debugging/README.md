# Lab02 - Shell Debugging and Failure Handling

## 1. Objective

Document and implement a Bash script that:

- Uses shell debugging features
- Fails predictably
- Explains why it failed
- Cleans up system artifacts before exit

This lab focuses on building and validating scripts that fail safely and
transparently, rather than silently and unpredictably.

---

## 2. Environment

- Target OS: Rocky Linux(RHEL-based)
- Target Kernel: Linux 6.12.0-124.28.1.el10_1.x86_64
- Control OS: Kali Linux
- Control Kernel: Linux 6.18.5+kali-amd64
- Version: 2025.4
- Linux 6.18.5+kali-amd64
- Execution Context: Local VMware Workstation
- VM/Bare Metal: NO
- Network mode: NAT
- Shell: Bash 
- User context (root / sudo / user): Non-root with sudo, or root when applicable

> Note: Although documentation was written from a Kali-Linux workstation, the
> concepts and behaviors demonstrated are distrobution-agnostic and directly
> applicable to RHEL-based systems. 

---

## 3. Preconditions

- A Linux OS with Bash installed (`/bin/bash`)
- User has permission to:
  - Create files in `/tmp`
  - Execute shell scripts
- Script is executed in a non-restricted shell environment
- No existing file named `/tmp/debug_demo.*` is required or assumed
- The user understands that the script is designed to fail intentionally
- Interactive shell may be zsh; script explicitly executes under bash via shebang

---

### 4. Procedure

1. Created a shell script to demonstrate controlled failure behavior.
2. Added a bash shebang to explicitly define the interpreter.
3. Enabled strict error handling and command tracing.
4. Defined a temporary file path using the script process ID.
5. Implemented a cleanup function to remove temporary artifacts.
6. Implemented an error handler to report failure details.
7. Registered `EXIT` and `ERR` traps.
8. Created a temporary file in `/tmp`.
9. Executed a command designed to fail.
10. Executed the script from the command line.

---

## 5. Validation

### Validation Results

- The script exited immediately after the failing command.
- An error message was displayed indicating:
  - The line number where the failure occurred
  - The exit code returned by the failing command
- The temporary file was removed automatically upon script exit.
- No temporary files remained in `/tmp` after execution.

### Validation Checks

- Verified script exit code was non-zero.
- Verified `/tmp/debug_demo.*` did not exist after execution.
- Confirmed error handler executed before cleanup.

---

## 6. Results

- Script behavior and exit codes were confirmed by command execution.
- Cleanup logic was validated by inspecting '/tmp' post-execution.
- Results are reproducible and consistent across repeated runs.

---

## 7. Clean-up / Revert

Clean-up was handled automatically by the script using an `EXIT` trap.

- Temporary file created during execution was removed.
- No manual cleanup actions were required.
- System state was verified to be unchanged after script completion.

---

## 8. Validation Philosophy

Validation is required for all labs.

Examples:
- `systemctl status`
- `ss -tulnp`
- `lsblk`
- `getenforce`
- `curl / nc / ping`

No validation = incomplete lab.

---

## 9. Troubleshooting Philosphy

Errors are expected and documented. 

Each issue should include:
- Symptom
- Root cause
- Fix
- Verifcation

---

## 10. Decision Logging

Every non-default or opinionated choice is explained.

Examples: 
- Filesystem selection
- Shell options and error handling
- Cleanup and failure-handling strategy

---

## 11. Change Log  
Include:
- YYYY-MM-DD
- Lab added:
- Major update:

---

## 12. Ethics & Safety
- No unauthorized access
- No production systems
- All offensive tools used in isolated labs only.

---

## 13. Status 

Active - continuously updated as skills improve.
