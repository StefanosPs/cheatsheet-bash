#!/bin/bash


title "Arithmetic"


echo "num1=12"
num1=12
echo "num2=2"
num2=2

echo "let num3=num1+num2;echo \${num3}"
let num3=num1+num2
printResult ${num3}

echo "let num4=num1*num2;echo \${num4}"
let num4=num1*num2
printResult "${num4}"

echo "num5=\$((num4+num3));echo \${num5}"
num5=$(($num4+$num3))
printResult ${num5}


echo "expr \${num4} \* \${num3}"
num6=`expr ${num4} \* ${num3}`
printResult ${num6}

#Decimal

echo "num7=100.19"
num7=100.19
printResult $num7

echo "num8=\$(echo \"scale=3; \${num7}/100\" | bc)"
num8=$(echo "scale=3; ${num7}/100" | bc)
printResult $num8

echo "result=\$(echo \"scale=4; (-105.5*7+50*3)/20 + (19^2)/7 \" | bc ) "
result=$(echo "scale=4; (-105.5*7+50*3)/20 + (19^2)/7 " | bc )
printf "\t%.3f\n" $result