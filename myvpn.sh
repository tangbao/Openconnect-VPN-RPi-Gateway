#!/bin/bash

# use openconnect to connect to VPN with only one line command
# modify it before using

{ printf '<NetID password>\n'; sleep 1; printf "$(python3 <WorkDir>/duo.py)\n"; } | openconnect <VPN URL> --user=<NetID>

