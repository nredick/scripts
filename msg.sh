#!/bin/bash

osascript -e 'tell application "Messages" to send "'"$1"'" to buddy "'"$2"'"'
