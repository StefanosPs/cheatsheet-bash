#!/bin/bash

title "Local Variables"


echo 'hello="Hello            World"'
hello="Hello            World"

echo 'echo hello'
echo -e "\t" hello

echo 'echo $hello'
echo -e "\t" $hello

echo 'echo ${hello}'
echo -e "\t" ${hello}

echo 'echo "$hello"'
echo -e "\t" "$hello"

echo 'echo ${hello}'
echo -e "\t" "${hello}"


echo "echo '\$hello' " 
echo -e "\t" '${hello}'

echo '"The length of the string is ${#hello} "'
echo -e "\t" "The length of the string is ${#hello} "

title "Environment Variables"

printResult '$HOME='$HOME
#printResult '$PATH='$PATH
printResult '$PWD='$PWD
printResult '$RANDOM='$RANDOM
printResult '$UID='$UID 
