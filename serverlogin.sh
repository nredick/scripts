#!/usr/bin/expect
#only need to replace 'user@address' with your username and 'yourpassword' with you password 

spawn ssh user@address
expect "password"
send "yourpassword\r"
interact
