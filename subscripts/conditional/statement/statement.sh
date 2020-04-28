#!/bin/bash


title "Conditional Statement"

let avrg=$RANDOM%100
graduation=
echo " if avrg>=80 graduation=A avrg>=60 graduation=B avrg>=50 graduation=C elai fail "
if [ $avrg -ge 80 ]; then
    graduation="A"
elif [ $avrg -ge 60 ];then
    graduation="B" 
elif [ $avrg -ge 50 ];then
    graduation="C"
else
    graduation="FAIL"
fi 

printResult "Average -$avrg- Graduation -${graduation}-"

#echo -n "Enter the name of an animal: "
#read ANIMAL
ANIMAL=kangaroo
echo "  case  " 
num=
case $ANIMAL in
 ( horse | dog | cat) num="four";;
 ( man | kangaroo ) num="two";;
 ( *) num="an unknown number of";;
esac
printResult "The $ANIMAL has $num legs."
