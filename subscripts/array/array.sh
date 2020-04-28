#!/bin/bash

title "Array"


echo 'array=({a..z..2})' 
array=({a..z..2})

echo 'echo  ${array[*]} # print array' 
echo -e "\t" ${array[*]}
echo 'echo  ${array[@]} # print array' 
echo -e "\t" ${array[@]}
echo 'echo ${#array[*]} # Count all elements in an array.' 
echo -e "\t" ${#array[*]}


echo '${array[*]} VS ${array[@]}'
printf "\t+ %s\n" "${array[*]}"
printf "\t+ %s\n" "${array[@]}"


#i=0
#echo 'For  "${array[*]}" '
#for word in "${array[*]}"; do  echo "$word -- $i"; let i=$i+1; done

#i=0
#echo 'For  "${array[@]}" '
#for word in "${array[@]}"; do echo "$word -- $i"; let i=$i+1; done

#Array slice
echo 'echo ${array[@]:1:1} #Array slice'
echo -e "\t"  ${array[@]:1:1}

#Add Elements
echo 'array=("${array[@]}" {b..z..2} "steve"); echo ${array[@]} '
array=("${array[@]}" {b..z..2} "tmp") 
echo -e "\t" ${array[@]}

#Delete ELement
echo 'num=$(( ${#array[*]} - 1 ));unset array[num];echo ${array[@]} '
num=$(( ${#array[*]} - 1 ))
unset array[num]
echo -e "\t" ${array[@]}