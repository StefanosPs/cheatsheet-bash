#!/bin/bash

title "Brace Expansion"

echo "echo ~/{file1,file2,file3}.js " 
tmpAr=( ~/{file1,file2,file3}.js)
printResult "${tmpAr[*]}"  
 

echo "echo {0..5} "
tmpAr2=( {0..5} )
printResult "${tmpAr2[*]}"  
 

echo "echo {00..8..2} "
tmpAr3=({00..8..2})
printResult "${tmpAr3[*]}"  
