# Lab06 - Text Domination Commands Executed

## Command Log


## Pre-Checks
(Verify system state before making changes)

# identity/ privilege check

```bash

id
uid=1001(ShadoVaine) gid=1001(ShadoVaine) groups=1001(ShadoVaine),4(adm),27(sudo),100(users),134(libvirt),981(docker),993(kvm),999(systemd-journal)

```bash

# Environment / Target Verification

```bash

pwd
/home/ShadoVaine

ls -ld /var/log/auth.log
-rw-r----- 1 root adm 232733 Jan 11 17:55 /var/log/auth.log

```bash

# Confirm Read Access

```bash
(echo version)
test -r /var/log/auth.log && echo "Readable" || echo "Not Readable"

Readable

(printf version)
test -r /var/log/auth.log && printf "Readable\n" || printf "Not Readable\n"

Readable

```bash

# Confirm File is Not Empty

```bash

test -s /var/log/auth.log && printf "Log not empty\n" || printf "Log empty\n"

Log not empty

```bash

# Confirm Expected Log Pattern Exists

```bash

grep -c "Failed password" /var/log/auth.log

0

```bash

# Inspect Real SSH Messages

```bash

grep sshd /var/log/auth.log | head
grep: /var/log/auth.log: binary file matches
2026-01-04T15:28:06.173575-06:00 Shadolab sshd[1391]: Server listening on 0.0.0.0 port 22.
2026-01-04T15:28:06.173681-06:00 Shadolab sshd[1391]: Server listening on :: port 22.
2026-01-05T11:55:10.791259-06:00 Shadolab sshd[1316]: Server listening on 0.0.0.0 port 22.
2026-01-05T11:55:10.791638-06:00 Shadolab sshd[1316]: Server listening on :: port 22.
2026-01-05T16:42:19.695667-06:00 Shadolab sshd[1295]: Server listening on 0.0.0.0 port 22.
2026-01-05T16:42:19.695909-06:00 Shadolab sshd[1295]: Server listening on :: port 22.
2026-01-06T11:31:46.492333-06:00 Shadolab sshd[1405]: Server listening on 0.0.0.0 port 22.
2026-01-06T11:31:46.492675-06:00 Shadolab sshd[1405]: Server listening on :: port 22.
2026-01-07T01:59:10.528203-06:00 Shadolab sshd[1403]: Server listening on 0.0.0.0 port 22.
2026-01-07T01:59:10.529621-06:00 Shadolab sshd[1403]: Server listening on :: port 22.

```bash

# Parsing Execution

# Attempt the primary Parse (awk)

```bash

awk '/Failed password/ {print $(NF-3)}' /var/log/auth.log

No Matches

```bash

# awk: Broadened authentication patterns (Defensive Parsing)

```bash

awk '/Failed|Invalid|authentication failure/ {print $(NF-3)}' /var/log/auth.log
tty=/dev/pts/0
tty=/dev/pts/0
tty=/dev/pts/0
tty=/dev/pts/0
tty=/dev/pts/0
tty=/dev/pts/0
tty=/dev/pts/0
tty=:0
tty=:0
tty=/dev/pts/0
tty=/dev/pts/0
tty=/dev/pts/0
tty=/dev/pts/0
tty=/dev/pts/0
tty=:0
tty=/dev/pts/0

```bash

# Full aggregation pipeline

```bash

awk '/Failed password/ {print $(NF-3)}' /var/log/auth.log | sort | uniq -c |
sort -nr

No Matches

```bash

# sed stream extraction attempt

```bash

sed 's/.*from //' /var/log/auth.log | sed 's/ port.*//'
2026-01-11T17:45:01.832845-06:00 Shadolab CRON[56484]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-01-11T17:45:01.838624-06:00 Shadolab CRON[56484]: pam_unix(cron:session): session closed for user root
2026-01-11T17:55:01.856448-06:00 Shadolab CRON[61475]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-01-11T17:55:01.862808-06:00 Shadolab CRON[61475]: pam_unix(cron:session): session closed for user root
2026-01-11T18:05:01.891376-06:00 Shadolab CRON[66483]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-01-11T18:05:01.897575-06:00 Shadolab CRON[66483]: pam_unix(cron:session): session closed for user root
2026-01-11T18:09:01.910402-06:00 Shadolab CRON[68481]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-01-11T18:09:01.916040-06:00 Shadolab CRON[68481]: pam_unix(cron:session): session closed for user root
2026-01-11T18:15:01.928599-06:00 Shadolab CRON[71506]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-01-11T18:15:01.937915-06:00 Shadolab CRON[71506]: pam_unix(cron:session): session closed for user root
2026-01-11T18:17:01.945419-06:00 Shadolab CRON[72511]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-01-11T18:17:01.954120-06:00 Shadolab CRON[72511]: pam_unix(cron:session): session closed for user root
2026-01-11T18:25:01.966664-06:00 Shadolab CRON[76493]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-01-11T18:25:01.973270-06:00 Shadolab CRON[76493]: pam_unix(cron:session): session closed for user root
2026-01-11T18:35:01.988026-06:00 Shadolab CRON[81515]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-01-11T18:35:02.028230-06:00 Shadolab CRON[81515]: pam_unix(cron:session): session closed for user ro

```bash

# cut field extraction

```bash

grep sshd /var/log/auth.log | cut -d' ' -f11
grep: /var/log/auth.log: binary file matches

```bash
















---

