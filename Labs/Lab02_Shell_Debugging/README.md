---

## Shell Debugging and Failure Handling Lab README.md

Every lab README **must** contain the following sections:

### 1. Objective

Document and implement a Bash script that:
- Uses shell debugging features
- Fails predictably
- Explains why it failed
- Cleans up system aritfacts before exit

### 2. Environment
- OS: Kali Linux
- Version: 2025.4
- Kernel: 6.17.10+kali-amd64
- VM/Bare Metal: NO
- Network mode: N/A
- User context (root / sudo / user):

### 3. Preconditions
- A Linux OS with Bash installed (`/bin/bash`)
- User has permission to:
  - Create files in `/tmp`
  - Execute shell scripts
- Scrip is executed in a non-restricted shell environment
- No existing file named `/tmp/debug_demo.*` is required or assumed
- the user understand that the script is designed to fail intentionally
- Interactive shell may be zsh; script explicityly executes under bash via shebang

### 4. Procedure

## Procedure

1. Created the shell script file.
2. Added a bash shebang to explicitly define the interpreter.
3. Enabled strict error handling and command tracing.
4. Defined a temporary file path using the script process ID.
5. Implemented a cleanup function to remove temporary artifacts.
6. Implemented an error handler to report failure details.
7. Registered `EXIT` and `ERR` traps.
8. Created a temporary file in `/tmp`.
9. Executed a command designed to fail.
10. Executed the script from the command line.


### 5. Validation

## Validation Results

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


### 6. Results

- See commandsSD.md file for script results


### 7. cleanup / Revert

## Cleanup

Cleanup was handled automatically by the script using an `EXIT` trap.

- Temporary file created during execution was removed.
- No manual cleanup actions were required.
- System state was verified to be unchanged after script completion.


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
