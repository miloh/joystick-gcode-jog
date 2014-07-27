#!/bin/bash

cp ./machine-jog /usr/bin/
mkdir -p /home/ubuntu/.config/js-conf
cp js-conf/Afterglow-controller-for-PS3.config /home/ubuntu/.config/js-conf/
cp ./hold-octoprint.sh /usr/sbin/
chmod +x /usr/sbin/hold-octoprint.sh
./mkudevrule-joystic.sh



