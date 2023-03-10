#!/usr/bin/env bash
# Extension Attribute to see the current SSH port
# Created by macstuff.dev - Melwin Moeskops 
#   Display Name: SSH configured ports
#   Data type: String
#   Expected results: (ssh              {PORT}/udp/tcp     # SSH Remote Login Protocol)
port=$(less /etc/services | grep "SSH Remote Login Protocol")
echo "<result>${port}</result>";
exit;