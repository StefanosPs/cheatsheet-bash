#!/bin/bash

title "Exit status"

echo 'echo hello'
echo hello
echo "Last command terminated with error $?"

echo '$(cdcdcdcdcd 2> /dev/null)'
$(cdcdcdcdcd 2> /dev/null)
echo "Last command terminated with error $?"

echo "Exit the script"
exit 0
