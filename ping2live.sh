#!/bin/bash

# systemd only cannot make vpn always connected - it has been found that sometimes the vpn process is alive, but the connection is 
# actually dead. so to make sure the vpn is really alive, we ping an intranet ip address as a second way to keep connection alive

while :
do
  if ping -c 1 <some intranet ip> &> /dev/null
  then
    echo 'vpn is alive'
  else
    echo 'vpn is dead, restart myvpn'
    systemctl restart myvpn
  fi
  sleep 60 # run every 60 seconds
done
