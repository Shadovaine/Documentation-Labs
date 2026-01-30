# Commands for Lab 03

## to run script

sudo ./lock_user.sh <username>

## Confirm account is locked

passwd -S <username>

## Confirm log entry

sudo tail /var/log/user_lock.log

## To unlock the account

sudo usermod -U <username>
