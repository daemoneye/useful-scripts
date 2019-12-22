#!/usr/bin/env bash

# Remind the user how to use the script
# Requires at least the destination directory, usually an external device
# Optionally takes a user if backing up a user other than yourself
if [[ $# -eq 0 ]]
then
	echo "Usage $0 <destination> [user]"
	exit 1
fi

if [[ $# -gt 2 ]]
then
	echo "Usage $0 <destination> [user]"
	exit 1
fi

# Set username of files to backup
if [[ $# -eq 2 ]]
then
	user=$2
else
	user=`whoami`
fi

cp -vr /home/$user/ $1
