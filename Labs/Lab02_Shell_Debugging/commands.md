
# Commands Executed - Lab 02

## Shell Debugging and Failure Handling Lab


## Execution Plan (Pre-Execution)

The following steps outline the intended execution flow of the script before running it.

1. Enable strict shell error handling and command tracing
   - `set -euo pipefail`
   - `set -x`
   - Expected result: Script exits immediately on error and prints executed commands

2. Define a temporary file path using the process ID
   - `TMP_FILE="/tmp/debug_demo.$$"`
   - Expected result: Unique temp file path is created per execution

3. Register cleanup handler for script exit
   - `trap cleanup EXIT`
   - Expected result: Temporary file is removed regardless of script success or failure

4. Register error handler for command failure
   - `trap 'error_handler $LINENO' ERR`
   - Expected result: Script reports line number and exit code on failure

5. Create temporary file
   - `touch "$TMP_FILE"`
   - Expected result: Empty file is created in `/tmp`

6. Execute a command expected to fail
   - `ls /this/path/does/not/exist`
   - Expected result: Command returns a non-zero exit code, triggering error handling




## Observed Results (Post-Execution)

After executing the script, the following behavior was observed:

- The `ls` command failed with exit code `2`
- The `ERR` trap reported the failing line number and exit code
- The script exited immediately after the failure
- The temporary file was successfully removed by the `EXIT` trap

### Sample Output

+ TMP_FILE=/tmp/debug_demo.47333
+ trap cleanup EXIT
+ trap 'error_handler $LINENO' ERR
+ echo '[INFO] Creating temp file'
[INFO] Creating temp file
+ touch /tmp/debug_demo.47333
+ echo '[INFO] Simulating failure'
[INFO] Simulating failure
+ ls /this/path/does/not/exist
ls: cannot access '/this/path/does/not/exist': No such file or directory
++ error_handler 26
./fail_cleanly.sh: line 26: error_handler: command not found
+ cleanup
./fail_cleanly.sh: line 9: TMP: unbound variable

