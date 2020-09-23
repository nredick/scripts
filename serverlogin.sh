#!/usr/bin/expect

spawn ssh user@address
expect "password"
send "yourpassword\r"
interact
