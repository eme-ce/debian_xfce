#!/bin/bash

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo gdebi $(pwd)/google-chrome-stable_current_amd64.deb &&
rm $(pwd)/google-chrome-stable_current_amd64.deb