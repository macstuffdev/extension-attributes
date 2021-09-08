#!/usr/bin/env bash

# Extension Attribute to check if the keychain is broken.
#   Data type: String

# Get logged in user
if [ -z ${username} ]; then
	# Get the username of the currently logged in user
	username=$(/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }')
fi

command="$(find /Users/${username}/Library/Keychains/ -type f -mtime -2 -name '*.sb-*')"

if [ -z "${command}" ]; then
	echo "<result>Keychain is intact</result>"
else
	echo "<result>Keychain has back-up file in place</result>"
fi
