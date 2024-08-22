#!/bin/bash

wget https://telegram.org/dl/desktop/linux -O tsetup.tgz
sudo mkdir -p /opt/Telegram && sudo tar xf $(pwd)/tsetup.tgz -C /opt/Telegram --strip-components=1 && rm $(pwd)/tsetup.tgz
sudo ln -s /opt/Telegram/Telegram /usr/local/bin/telegram && sudo ln -s /opt/Telegram/Updater /usr/local/bin/telegramUpdater
