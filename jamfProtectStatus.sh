#!/usr/bin/env bash
# Extension Attribute to display the status of Jamf Protect
#   Display Name: Jamf Protect Status
#   Data type: String
#   Expected results: Protected, Enrolling, Missing Plan, Disconnected, Protect binary does not exist.
 
# Jamf Protect Location
jamfProtectBinaryLocation="/usr/local/bin/protectctl"

if [ -f "$jamfProtectBinaryLocation" ]; then
    jamfProtectStatus=$("$jamfProtectBinaryLocation" info | awk -F 'Status: ' '{print $2}' | xargs)
else
	jamfProtectTenant="Protect binary does not exist"
fi

# Display the current status
echo "<result>$jamfProtectStatus</result>"
