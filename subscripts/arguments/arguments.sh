#!/bin/bash


tmpvar=$_
title Arguments


echo 'Last argument of the previous command $_ ='
printResult $tmpvar

echo 'Number of input parameters $# =' 
printResult $#

echo 'Script Name $0 =' 
printResult $0

echo 'Other params'  
printResult "'\$1'=${1}"
printResult "'\$2'=${2}"
printResult "'\$3'=${3}"


title "SET Arguments"
echo Input parameters = $#
myvar="-s 123"

#split based on blank chars
#assign to input parameters!!
echo "set arguments $myvar"
set -- $myvar
printResult "\$* = $*"  


title "Read Arguments"

while [ $1 ]; do  
    arg=$1 
	shift
    case $arg in
        -V | --version )
            echo $version
            exit
        ;;
        -h | --help )
            echo $version
            exit
        ;;
        -s | --string )
            echo $1
            shift
        ;;
        * )
        echo "Wrong Argument '$arg'"
        #exit 1
        ;;
    esac;    
done

