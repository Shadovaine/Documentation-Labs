# Lab02 – Shell Debugging Notes

## Initial Failure Observation

The script failed at the intended point, which was the invalid `ls` command. With tracing enabled, the shell displayed the expanded command before emitting the error message.

- `ls /this/path/does/not/exist` failed intentionally  
- `+ ls /this/path/does/not/exist`  
- `ls: cannot access '/this/path/does/not/exist': No such file or directory`

---

## Debugging Signals Used

- `set -x` – showed execution flow and command expansion
- Exit codes – confirmed failure state programmatically

---

## Root Cause Analysis

- The command failed because the target path does not exist  
- The script exited because `set -e` treats non-zero exit codes as fatal

---

## Cleanup Verification

- Temporary file in `/tmp` was removed and verified  
- `ERR` trap reported failure context  
- `EXIT` trap guaranteed cleanup regardless of failure path

---

## Lessons Learned

- Defensive shell options allow scripts to fail fast and prevent partial or inconsistent system state

---

## Production Considerations

- Redirect error output and failure context to a structured log file for post-incident review  
- Avoid blanket use of `set -e` in complex scripts without careful control of failure boundaries

