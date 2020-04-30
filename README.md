## Introduction

This is a small bash handbook with examples. I made it just for fun, practice and not forget the bash basics..

## Content

- [Stream](#stream)
- [Redirections](#redirections)
- [Lists of Commands](#lists-of-commands)
- [Pipe](#lists-of-commands)
- Expansion
  - [Brace](subscripts/expansions/brace/README.md)
  - [Parameter](subscripts/expansions/parameter/README.md)
- [Variables](subscripts/variable/README.md)
- [Arrays](subscripts/array/README.md)
- [Arguments](subscripts/arguments/README.md)
- [Arithmetic](subscripts/arithmetic/README.md)
- Conditional
  - [Expressions](subscripts/conditional/expressions/README.md)
  - [Statements](subscripts/conditional/statement/README.md)
- [Loops](subscripts/loop/README.md)
- [Functions](subscripts/functions/README.md)
- [Exit](subscripts/exitstatus/README.md)
- [Builtins](subscripts/builtins/README.md)
- [Commands](subscripts/commands/README.md)

### Stream

These are three standard streams that are established when a Linux command is executed.

| Code  | Descriptor    | Description           |
| :---  | :---          | :---                  |
| `0`   | `stdin`       | The standard input.   |
| `1`   | `stdout`      | The standard output.  |
| `2`   | `stderr`      | The errors output.    |


### Redirections

| Operator               | Description                                    |
| :---                   | :---                                           |
| `<`                    | Redirecting Input                              |
| `>`                    | Redirecting Output                             |
| `[&>][>&][>word 2>&1]` | Redirecting Standard Output and Standard Error |
| `>>`                   | Appending Redirected Output                    |
| `[&>>][>>word 2>&1]`   | Appending Standard Output and Standard Error   |
| `<<`                   | Here Documents                                 |
| `<<<`                  | Here Strings                                   |

```bash

# Redirecting Output
$ ls > /dev/stdout

# Redirecting Standard Output and Standard Error
$ ls &> /dev/stdout 
$ ls > /dev/stdout 2>&1
$ ls 2>&1 > /dev/stdout

# Here Documents  
$ cat >&2 <<END_USAGE
main: Cheat Sheet Bash Script

USAGE:
	main.sh [FLAGS] 

FLAGS:
	-h, --help				  Prints help information 

END_USAGE


# Here Strings  
string="This is a string of words."

read -r -a Words <<< "$string" 

echo "First word in String is:    ${Words[0]}"   # This
echo "Second word in String is:   ${Words[1]}"   # is
echo "Third word in String is:    ${Words[2]}"   # a
echo "Fourth word in String is:   ${Words[3]}"   # string
echo "Fifth word in String is:    ${Words[4]}"   # of
echo "Sixth word in String is:    ${Words[5]}"   # words.
echo "Seventh word in String is:  ${Words[6]}"   # (null)

```

### Lists of Commands

```bash

    # command2 is executed if, and only if, command1 returns an exit status of zero (success).
    command1 && command2

    # command2 is executed if, and only if, command1 returns a non-zero exit status.
    command1 || command2

```

### Pipe

The Pipe is a command in Linux that lets you use two or more commands such that output of one command serves as input to the next. 

```bash

   ls -al | grep ".sh"

```



## Also see
* [Bash Reference Manual](https://www.gnu.org/software/bash/manual/bash.html)
* [The Linux Documentation Project](http://www.tldp.org/LDP/abs/html/) 
* [bash-hackers](https://wiki.bash-hackers.org/)
* [devhints.io](https://devhints.io/bash) 
* [Awesome Lists](https://github.com/awesome-lists/awesome-bash)
* [denysdovhan](https://github.com/denysdovhan/bash-handbook/blob/master/README.md)