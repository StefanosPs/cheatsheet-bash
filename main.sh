#!/bin/bash



DIR="$( cd "${0%/*}" && pwd )"

#echo "${DIR}"
#exit

error() {
  printf -e "\E[1;31mError\E[0m: $1\n\n"
}
title() {
   echo -e "\n\E[1;30m$1\E[0m"
}
printResult() {
   echo -e "\t$1"  1>&2
}


usage() {
	cat >&2 <<END_USAGE
main: Cheat Sheet Bash Script

USAGE:
	main.sh [FLAGS] 

FLAGS:
	-h, --help				  Prints help information 

END_USAGE
}

nextcommand(){
	local nextfile="$1"
	echo -n "Proceed ${nextfile}? [Y/n]: "
	read ans 
	echo

	case $ans in
        [Yy]* ) clear; return 0;;
        [Nn]* ) echo Exiting...; exit;;
        * ) 	nextcommand "$*" ;;
    esac

} 

run(){
	
	nextcommand "brace.sh"
	. "${DIR}/subscripts/expansions/brace/brace.sh"
	nextcommand "parameter.sh"
	. "${DIR}/subscripts/expansions/parameter/parameter.sh"
	nextcommand "variables.sh" 
	. "${DIR}/subscripts/variable/variable.sh"
	nextcommand "array.sh"
	. "${DIR}/subscripts/array/array.sh"
	nextcommand "arguments.sh par1 par2 par3"
	. "${DIR}/subscripts/arguments/arguments.sh" "par1" "par2" "par3"
	nextcommand "arithmetic.sh"
	. "${DIR}/subscripts/arithmetic/arithmetic.sh"
	nextcommand "conditional_expressions.sh"
	. "${DIR}/subscripts/conditional/expressions/expressions.sh"
	nextcommand "conditional_statement.sh"
	. "${DIR}/subscripts/conditional/statement/statement.sh"
	nextcommand "loops.sh"
	. "${DIR}/subscripts/loop/loop.sh"
	nextcommand "functions.sh"
	. "${DIR}/subscripts/functions/functions.sh"
	nextcommand exitStatus   
	. "${DIR}/subscripts/exitstatus/exitstatus.sh" 
}

if [ $# -gt 0 ]; then
	arg="$1"
	shift
	case "$arg" in
		-h|--help)
			help
	  		exit 0
	  		;; 
		*)
			error "unknown option: '$arg'"
			help
	  		exit 1
	  		;;
  	esac
fi

run
