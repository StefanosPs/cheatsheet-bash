### Variables

#### Local Variables

```bash
    a=123	#int
    echo a  #print a
    echo $a #print 123

    hello="Hello            World"
    echo $hello		#Print Hello World
    echo ${hello}	#Print Hello World
    echo "$hello"	#Print Hello            World
    echo "${hello}"	#Print Hello            World
    echo '$hello'	#Print $hello
    echo '${hello}'	#Print ${hello}

    echo ${#hello}	#Prints the length of the variable

    FILE="test1 test2.txt"
    wc -m $FILE   # attempts to count char of 2 files: `test1` and `test2.txt`
    wc -m "$FILE" # attempts to count char of 1 files: `test1 test2.txt`
```

##### Set Local Variables & Scope 

```bash
    #local var='local varaible'
    func1(){
        local var='func1 local'
        echo "In func1, var = '$var'"
        func2
    }

    func2(){
        echo "In func2, var = '$var'"
    }

    local var=global # as global
    func1

    echo "Global var = '$var'"
```

#### Environment Variables 

| Parameter	   | Description                                                                  |
| :---	       | :---                                                                         |
| `$HOME`      | The current user's home directory.                                           |
| `$PATH`      | A colon-separated list of directories in which the shell looks for commands. |
| `$PWD`       | The current working directory.                                               |
| `$RANDOM`    | Random integer between 0 and 32767.                                          |
| `$UID`       | The numeric, real user ID of the current user.                               |

[Read More](https://www.gnu.org/software/bash/manual/bash.html#Bourne-Shell-Variables)

##### Set Environment Variables

```bash
    export VARNAME="my value" 
```

[HOME](../../README.md)