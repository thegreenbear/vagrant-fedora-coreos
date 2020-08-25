#!/bin/bash -e
systemctl disable zincati
nmcli connection delete "Wired Connection"
nmcli connection add \
  type ethernet \
  con-name Eth0 \
  ifname eth0 \
  ipv4.method auto \
  connect.autoconnect yes
systemctl restart NetworkManager
