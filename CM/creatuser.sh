#!/bin/bash

MYUSER=$1

if [ -z "$MYUSER" ]; then
    echo "Please enter a username you want to add: Mandatory"
    exit 1
fi

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "You must be the root user to perform this activity."
    exit 1
fi

# Check if the user already exists
/usr/bin/id "$MYUSER"
if [ $? -eq 0 ]; then
    echo "The user $MYUSER already exists."
    exit 1
fi

# Add the new user
/sbin/useradd "$MYUSER"

echo "The user $MYUSER has been added."

