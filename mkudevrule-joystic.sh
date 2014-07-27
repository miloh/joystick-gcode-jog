cat > /etc/udev/rules.d/50-event.rules <<EOF
KERNEL=="js*", ATTRS{idVendor}=="0e6f", GROUP="dialout", MODE="660" 

KERNEL=="input*", ACTION=="add", ATTRS{idVendor}=="0e6f", \
	ATTR{name}=="Afterglow controller for PS3", RUN+="/usr/sbin/hold-octoprint.sh $env{ACTION}"

ACTION=="remove", SUBSYSTEMS=="usb", ATTRS{idVendor}=="0e6f",  RUN+="/usr/sbin/hold-octoprint.sh $env{ACTION}"

EOF

sudo udevadm control --reload-rules
