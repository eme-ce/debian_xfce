#!/bin/bash

cat <<EOF | sudo tee /etc/NetworkManager/conf.d/wifi-powersave-off.conf
[connection]
wifi.powersave = 2 # 0=default 1=existing 2=disabled 3=enabled 
EOF

sudo systemctl restart NetworkManager 2>&1
