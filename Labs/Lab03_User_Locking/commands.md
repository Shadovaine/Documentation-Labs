# Lab03 - User Locking Commands Executed

## Command Log

## Run script with:

```bash

sudo ./lock_user.sh <username>

## Confirm account is locked

passwd -S <username>

## Confirm log entry

sudo tail /var/log/user_lock.log

## To unlock the account

sudo usermod -U <username>

```bash

