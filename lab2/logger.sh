#!/bin/bash

FILE="/home/lab2/test.txt"
LOG_LOCATION="/home/lab2/lab2_log/uptime.log"
FOUND="$(date) File - $FILE has been found."
LOST="$(date) File - $FILE has been lost."

if test -f "$FILE"; then
	if [ "$(tail -1 $LOG_LOCATION | grep found | wc -l)" -eq 0 ]; then
		echo "$FOUND" >> /home/lab2/lab2_log/uptime.log
	fi
else
	if [ "$(tail -1 $LOG_LOCATION | grep lost | wc -l)" -eq 0 ]; then
		echo "$LOST" >> /home/lab2/lab2_log/uptime.log
	fi
fi
