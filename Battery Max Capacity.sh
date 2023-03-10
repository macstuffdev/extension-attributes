#!/usr/bin/env bash
# Extension Attribute to see the maximum capacity of the battery
# Created by macstuff.dev - Melwin Moeskops 
#   Display Name: Battery Max Capacity
#   Data type: String
#   Expected results: 86%
echo "<result>$(system_profiler SPPowerDataType | sed -n -e 's/^.*Maximum Capacity: //p')""</result>"
exit;