#!/usr/bin/env bash
# Extension Attribute to see all LaunchDaemosn on the device
# Created by macstuff.dev - Melwin Moeskops 
#   Display Name: List LaunchDaemons
#   Data type: String
#   Expected results: list of daemons excluding com.apple

Daemons=$(launchctl list | grep -v com.apple)

echo "<result>$Daemons</result>";