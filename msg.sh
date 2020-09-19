#!/bin/bash

osascript -e 'tell application "Messages" to send "'"$1"'" to buddy "'"$2"'"'
if [ $? -eq 0 ]; then
	echo "Message sent!"
else 
	echo "Message failed."
fi
