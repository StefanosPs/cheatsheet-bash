#!/bin/bash 

title "Looping Constructs"

LIMIT=19 # Upper limit

counter=1

##Example until
echo -e 'counter=1;until [ $counter -gt $LIMIT ]\n'
until [ $counter -gt $LIMIT ]
do
  echo -n "$counter "
  let counter++
done
echo

##Example while
a=0
echo -e 'a=0;while [ "$a" -le "$LIMIT" ]\n '
while [ "$a" -le "$LIMIT" ]
do
    a=$(($a+1))
    if [ $(($a%7)) -eq 0 ]
        then continue; 
    fi
    echo -n  "$a "
done
echo

#cat /dev/stdin
echo -e 'cat "${DIR}/subscripts/loop/README.md" | while read line; do\n'
cat "${DIR}/subscripts/loop/README.md" | while read line; do
  echo -n "${line}"
done
echo

##Example FOR
echo -e 'for file in ~/{"file 1","file 2","file 3"}; do'
for file in ~/{"file 1","file 2","file 3"}; do
	echo -n "$file"
done;
echo

echo -e 'files=("file 4" "file 5" "file 6");for file in "${files[@]}"; do\n'
files=("file 4" "file 5" "file 6") 
for file in "${files[@]}"; do
	echo -n "$file"
done;
echo

echo -e 'for ((  i=0; i <= $LIMIT; i++  )); do\n'
for ((  i=0; i <= $LIMIT; i++  )); do
	echo -n "$i "
done;
echo
 