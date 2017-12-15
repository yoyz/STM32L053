#!/usr/bin/expect -f
spawn telnet localhost 4444
expect "> "
send "reset halt \n"
expect "> "
send "flash write_image erase $argv \n"
expect "> "
send "reset run \n"
expect "> "
send "exit \n"
expect eof

