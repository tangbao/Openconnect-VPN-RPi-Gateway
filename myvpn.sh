#!/bin/bash

# use openconnect to connect to VPN with only one line command
# modify it before using

challange=$(python3 duo.py) && sudo -S <<< "<root password>" echo I am root now && { printf '<NetID password>\n'; sleep 1; printf "$challange\n"; } | sudo openconnect <VPN URL> --user=<NetID>