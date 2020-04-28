#!/bin/bash -x

title "Conditional Expressions"

echo "[ -a "${DIR}/main.sh" ]"
if [ -a "${DIR}/main.sh" ];then
    printResult "File exists ${DIR}/main.sh"
else
    printResult "File doesn't exists ${DIR}/main.sh"
fi

echo "num=0; [[ num -le 10 ]]"
num=0
while [[ $num -le 10 ]];do 
    printResult "Counter has value $num"
    let num++
done


echo "str=''; [\$str]"
str="" 
if [  $str]; then printResult "Not empty string";else printResult "Str is empty"; fi