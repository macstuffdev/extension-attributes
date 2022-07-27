#!/usr/bin/env bash
# Extension Attribute to check if the binary crashed and how many times.
# Created by macstuff.dev - Melwin Moeskops 
#   Display Name: Binary Crash Count
#   Data type: Integer
#   Expected results: 1, 2, 3, etc...
COUNT=`/usr/bin/find /Library/Logs/DiagnosticReports -maxdepth 1 -name "jamf*" | wc -l | tr -d '[[:space:]]'`;
echo "<result>$COUNT</result>";
exit;