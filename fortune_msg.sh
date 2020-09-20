#!/bin/bash

var1="$(fortune)"
osascript -e 'tell application "Messages" to send "'"$var1"'" to buddy "'"$1"'"'
if [ $? -eq 0 ]; then
	echo "A fortune was sent to $1!"
else 
	echo "Message failed, try again."
fi
