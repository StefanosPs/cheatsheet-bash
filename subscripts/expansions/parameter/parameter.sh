#!/bin/bash

title "Parameter Expansion"


title "Init value - value exists"
echo 'var2=${var1:-"defaultval"};echo $var2' 
var2=${var1:-"defaultval"}
printResult $var2

echo 'var3=${var2:-"defaultval02"};echo $var3' 
var3=${var2:-"defaultval02"}
printResult $var3

echo ': ${var1:="defaultvalue"};echo $var1' 
: ${var1:="defaultvalue"}
printResult $var1


echo '(${var5:?" is undefined"}) 2>/dev/null;echo "Last exit status $? " ' 
(${var5:?" is undefined"}) 2>/dev/null
printResult "Last exit status $? "

echo 'echo ${var1:+"is defined"}'
printResult "${var1:+"is defined"}"


title "Manage Values"

array=({a..z})


for str in  ${array[@]}; do
    string+=${str}
done

#sub string
echo 'echo  ${string:2:3}' 
printResult "${string:2:3}"
#Array Slice
echo 'echo  ${array[@]:2:3}'
printResult "${array[@]:2:3}" 

echo 'echo ${#string}' 
printResult "${#string}"
echo 'echo ${#array[@]}'
printResult "${#array[@]}"
echo 'echo ${#array[*]}' 
printResult "${#array[*]}"


# ${0%/*}

echo 'fullpath="$( cd "${0%/*}" && pwd )";echo $fullpath' 
fullpath="$( cd "${0%/*}" && pwd )"
printResult "$fullpath"

echo 'fullpath="${fullpath}/${0#*/}" ;echo $fullpath' 
fullpath="${fullpath}/${0#*/}" 
printResult ${fullpath}


#Remove prefix
echo 'echo ${fullpath#*/}' 
printResult ${fullpath#*/}

#Remove  the longest matching pattern  prefix
echo 'echo ${fullpath##*/}' 
printResult ${fullpath##*/}


#Remove suffix 
echo 'echo ${fullpath%/*}' 
printResult ${fullpath%/*}

#Remove  the longest matching pattern  suffix 
echo 'echo ${fullpath%%/*}' 
printResult ${fullpath%%'home'*}

#Replace
## Replace ${HOME} with  '~'
echo 'echo  ${fullpath/#${HOME}/'~'}' 
printResult  ${fullpath/#${HOME}/'~'}

#Upper case
echo 'From \n\t ${string} to \n\t\t${string^} and \n\t\t${string^^}' 
printResult "From \n\t ${string} to \n\t\t${string^} and \n\t\t${string^^}"


capaplphabet=${string^^}
#Lowercase
echo 'From \n\t ${capaplphabet} to \n\t\t${capaplphabet,} and \n\t\t${capaplphabet,,}' 
printResult "From \n\t ${capaplphabet} to \n\t\t${capaplphabet,} and \n\t\t${capaplphabet,,}"

title "EXTRA: Transformation of the value of parameter or information about parameter itself."

echo 'echo ${string@Q} #The expansion is a string that is the value of parameter quoted in a format that can be reused as input. '
printResult ${string@Q}

echo 'echo ${string@A} #The expansion is a string in the form of an assignment statement or declare command that, if evaluated, will recreate parameter with its attributes and value. '
printResult ${string@A}
 

echo 'tmpstr2="\t Date \d"; echo -e "$tmpstr2 vs  ${tmpstr2@P}"'
tmpstr2="\t Date \d"
printResult "$tmpstr2 vs  ${tmpstr2@P}"

#Get list of matching variable names
#VECH="Bus"
#VECH1="Car"
#VECH2="Train"
#echo "${!VECH*}"

 