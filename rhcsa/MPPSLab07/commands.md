# Commands Executed

## Lab 07: Users, Permission, Scheduling

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

# Phase 1: User, Group, and Permissions

## Step 1. Create users and Groups (in Rocky OS)

sudo groupadd engineering
sudo groupadd ops

sudo useradd -m -G engineering tom
sudo useradd -m -G engineering sam
sudo useradd -m -G ops carol

# Create passwords 

sudo passwd tom
sudo passwd sam
sudo passwd carol

# Verify success

id tom
id sam
id carol

## Step 2 - Create shared project directory

sudo mkdir -p /srv/projects/alpha
sudo chown root:engineering /srv/projects/alpha
sud ochmod 2770 /srv/projects/alpha

# Verify successful creation

ls -ld /srv/projects/alpha

## Step 3 - Simulate a permission failure (intentional)

Switch to tom:

su - tom
touch /srv/projects/alpha/tom.txt
exit

Switch to carol:

su - carol
touch /srv/projects/alpha/carol.txt
output - touch: cannot touch '/srv/projects/alpha/carol.txt': Permission denied

## Step 4 - Diagnose (not fix yet)

ls -ld /srv/projects/alpha
getent group engineering
getent group ops

---

## Phase 2 - ACLs (Targeted Access Control)

## Step 1 - Reconfirm the failure

su - carol
touch /srv/projects/alpha/test_from_carol.txt

Output=Permission Denied

- Exit back to root:
exit

## Step 2 - Inspect current ACL state

Run as root:
getfacl /srv/projects/alpha

getfacl: Removing leading '/' from absolute path names
# file: srv/projects/alpha
# owner: root
# group: engineering
# flags: -s-
user::rwx
user:carol:rwx
group::rwx
mask::rwx
other::---

## Step 3 - Grant ACL access to carol

sudo setfacl -m u:carol:rwx /srv/projects/alpha

Re-check:

getfacl /srv/projects/alpha

getfacl: Removing leading '/' from absolute path names
# file: srv/projects/alpha
# owner: root
# group: engineering
# flags: -s-
user:: rwx
user:carol:rwx
group::rwx
mask::rwx
other::---

## Step 4 - Test access again

Switch to carol

su - carol
touch /srv/projects/alpha/test_from_carol.txt
ls -l /srv/projects/alpha
exit

## Step 5 - Observe the ACL mask

getfacl /srv/projects/alpha

getfacl: Removing leading '/' from absolute path name
# file: srv/projects/alpha
# owner: root
# group: engineering
# flags: -s-
user::rwx
user:carol:rwx
group::rwx
mask::rwx
other::---

## Step 6 - Set Default ACLs

sudo setfacl -d -m u:carol:rwx /srv/projects/alpha

Verify:

getfacl /srv/projects/alpha

getfacl: Removing leading '/' from absolute path name
# file: srv/projects/alpha
# owner: root
# group: engineering
# flags: -s-
user::rwx
user:carol:rwx
group::rwx
mask::rwx
other::---
default:user::rwx
default:user:carol:rwx
default:group::rwx
default:mask::rwx

## Step 7 - Test inheritance

su - tom
touch /srv/projects/alpha/tom_phase2.txt
exit

su - carol
ls -l /srv/projects/alpha/tom_phase2.txt



