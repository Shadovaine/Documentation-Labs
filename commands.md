# Commands Executed

## <Lab number and name>

## Documentation Instructions
- Not every section is going to be filled out for every lab
- Remove the sections not needed for a lab
- Order stays the same
- Headings stay the same also

## Mental Guideline (go through this checklist in your head for each lab)
- What's the state?
- What do I need to prepare?
- Execute
- Verify
- Check exit codes
- Fix if needed
-Verify again

## Pre-Checks
(Verify system state before making changes)


# identity/ privilege check

id

# Environment / Target Verification

pwd

ls -ld <target>

# Permissions

chmod +x <script_name>

# File or Directory creation

touch <file>

mkdir <dir>

# Script Inspection (Verify interpreter and safety settings)

head -n 5 <script_name>

# Execution (Commands actually executed to perform the task)

./<script_name> <arguments>

# OR

command --option value

# Debug / Trace Execution 

bash -x <script_name>

# Verification (Commands that prove the task succeeded)

# State Verification

ls -l <file>

stat <file>

# Service / User / Process checks

systemctl status <service>

id <user>

# Exit Codes / Error Handling (Capture failure or success states)

echo $?

# Remediation (Commands used to correct issues found during audit)

chmod o-w <file>

chown root:root <file>

# Post-REmediation Verification (Re-run checks to confirm correction)

<verification_commands>

# Cleanup (Undo changes made during the lab)

rm -f <file>

rmdir <dir>

