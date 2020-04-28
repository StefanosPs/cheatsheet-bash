#!/bin/bash

title "Functions"

#Check Variable Scope
func1(){
    local var='func1 local'
    echo "In func1, var = '$var'"
    func2
}

function func2 {
    echo "In func2, var = '$var'"
}


local var=global # as global
func1

echo "Global var = '$var'"