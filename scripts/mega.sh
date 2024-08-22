#!/bin/bash

wget https://mega.nz/linux/repo/Debian_12/amd64/megasync-Debian_12_amd64.deb &&
sudo gdebi "$(pwd)"/megasync-Debian_12_amd64.deb &&
rm "$(pwd)"/megasync-Debian_12_amd64.deb