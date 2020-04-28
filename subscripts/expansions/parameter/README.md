### Shell Parameter

The ‘$’ character introduces parameter expansion, command substitution, or arithmetic expansion. 


#### Init value 

```bash

	#Set var2 = $var1 or "defaultval" if $var1 not set or is null
	var2=${var1:-"defaultval"}

	#Set var1 = "defaultvalue" if $var1 not set or is null
	: ${var1:="defaultvalue"}

	#if unset or null var1 prints to stderror var1 is undefined"
	: ${var1:?" is undefined"}

	#if is set var1 prints to stderror var1 is defined"
	echo ${var1:+"is defined"}
```

#### Manage Value

| Code							| Description																	|
| :---							| :---																			|
| ${#parameter}					| calculate the length															|
| ${parameter:offset:length}	| Returns the portion of string specified by the offset and length parameters.	|
| ${parameter#word}				| Remove prefix																	|
| ${parameter##word}			| Remove the longest matching pattern prefix									|
| ${parameter%word}				| Remove suffix																	|
| ${parameter%%word}			| Remove  the longest matching pattern  suffix									|
| ${parameter/pattern/string}	| Replace first match															|
| ${parameter//pattern/string}	| Replace all match																|
| ${parameter^pattern}			| Converts lowercase letters matching pattern to uppercase						|
| ${parameter^^pattern}			| Converts lowercase letters all matching pattern to uppercase					|
| ${parameter,pattern}			| Converts matching uppercase letters to lowercase								|
| ${parameter,,pattern}			| Converts all matching uppercase letters to lowercase							|

[HOME](../../../README.md)