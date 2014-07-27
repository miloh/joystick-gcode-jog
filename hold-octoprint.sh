#!/bin/bash

case  "$ACTION" in 
	add)
		# stop the octoprint service
		sudo service octoprint stop
		# and run the machine-jog.c program
		socat EXEC:"/usr/bin/machine-jog -j "$HOME"/.config/js-conf/ -x 220 -z 60 -h -p "$HOME"/.config/js-conf/savedpoints.data" /dev/ttyACM0,raw,echo=0,b230400
		;;
	remove)
 		# restart the octoprint service
		sudo service octoprint start
		;;
esac
