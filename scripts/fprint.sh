#!/bin/bash

wget https://launchpad.net/~uunicorn/+archive/ubuntu/open-fprintd/+files/fprintd-clients_1.90.1-1ubuntu3_amd64.deb -O $(pwd)/fprintd-clients.deb &&
sudo gdebi $(pwd)/fprintd-clients.deb &&
rm $(pwd)/fprintd-clients.deb &&

wget https://launchpad.net/~uunicorn/+archive/ubuntu/open-fprintd/+files/open-fprintd_0.6~ppa1_all.deb -O $(pwd)/open-fprintd.deb &&
sudo gdebi $(pwd)/open-fprintd.deb &&
rm $(pwd)/open-fprintd.deb &&

wget https://launchpad.net/~uunicorn/+archive/ubuntu/open-fprintd/+files/python3-validity_0.14~ppa1_all.deb -O $(pwd)/python3-validity.deb &&
sudo gdebi $(pwd)/python3-validity.deb &&
rm $(pwd)/python3-validity.deb


cat << EOF | sudo tee /etc/systemd/system/fingerprint-restart.service
    [Unit]
    Description=Restart services to fix fingerprint integration
    After=suspend.target hibernate.target hybrid-sleep.target suspend-then-hibernate.target

    [Service]
    Type=oneshot
    ExecStart=systemctl restart open-fprintd.service python3-validity.service

    [Install]
    WantedBy=suspend.target hibernate.target hybrid-sleep.target suspend-then-hibernate.target
EOF

sudo systemctl daemon-reload &&
sudo systemctl enable fingerprint-restart.service &&
sudo pam-auth-update
