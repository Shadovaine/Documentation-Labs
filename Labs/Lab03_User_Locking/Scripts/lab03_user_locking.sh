#!/usr/bin/env bash

LOGFILE="/var/log/user_lock.log"                 # Defined location for log entries

# Root Check 
if [[ $EUID -ne 0 ]]; then                       # Start of loop statement, if effective user is not root(0)
  echo "ERROR: This script must be run as root." # Print statement if EUID is not root
  exit 1                                         # exit status
fi

# Argument check
if [[ $# -ne 1 ]]; then                          # Start of loop statement, if the # of arguments is not equal to 1
  echo "Usage: $0 <username>"                    # print statement if loop statement is true
  exit 1                                         # exit status
fi

USER="$1"                                        # Defined value for USER

# User Existence check 
if ! id "$USER" &>/dev/null; then                # Loop statement, if it is the incorrect USER to send error error and output to blackhole
  echo "ERROR: User '$USER' does not exist."     # print statement if loop is true 
  exit 1                                         # exit status
fi

# Lock the account
usermod -L "$USER"                               # command to lock user account
                        
# Verify Lock
if passwd -S "$USER" | awk '{print $2}' | grep -qx "L"; then         # loop statement to check if password is locked 
  echo "User '$USER' successfully locked."       # Print statement if loop is true
else                                             
  echo "ERROR: Failed to lock user '$USER'."     # Print statement if loop is false
  exit 1                                         # exit status
fi

# Log the action
echo "S(date `+%F %T`) | User '$USER' locked by $(whoami)" >> "$LOGFILE"  # command to print verified log with timestamp and operator
  
