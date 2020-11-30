#!/bin/bash

osascript -e 'tell application "Finder" to set desktop picture to POSIX file "'"$1"'"
osascript -e 'display notification "The desktop background has been changed to $1"'

