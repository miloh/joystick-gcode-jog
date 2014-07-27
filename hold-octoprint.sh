#!/bin/bash

case  "$ACTION" in 
	add)
		# stop the octoprint service
		sudo service octoprint stop
		# and run the machine-jog.c program
		socat EXEC:"/usr/bin/machine-jog -j /home/ubuntu/.js-conf/ -x 180 -z 50 -h -p savedpoints.data" /dev/ttyACM0,raw,echo=0,b230400
		;;
	remove)
 		# restart the octoprint service
		sudo service octoprint start
		;;
esac
