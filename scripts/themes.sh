#!/bin/bash

sudo apt install -y papirus-icon-theme bibata-cursor-theme
sudo apt install -y fonts-hack fonts-recommended fonts-ubuntu fonts-liberation2 fonts-cantarell fonts-jetbrains-mono
sudo git clone https://github.com/EliverLara/Sweet.git /usr/share/themes/Sweet && cd /usr/share/themes/Sweet
sudo git checkout nova