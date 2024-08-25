#!/bin/bash

mkdir -p ~/.config/gammastep
    cat <<EOF | tee ~/.config/gammastep/config.ini
[general]
temp-day=5800
temp-night=3200
gamma=0.9
adjustment-method=randr
location-provider=manual
[manual]
lat=-34.603722
lon=-58.381592
EOF
