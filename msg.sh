#!/bin/bash


var1=$1
var2=$2

osascript -e 'tell application "Messages" to send "'"$var1"'" to buddy "'"$var2"'"'
