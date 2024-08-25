#!/bin/bash

wget https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb &&
sudo gdebi "$(pwd)"/steam.deb &&
rm "$(pwd)"/steam.deb