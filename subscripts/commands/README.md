## bash 
#### screen

screen - screen manager with VT100/ANSI terminal emulation
```bash
#Starting Named Session
$ screen -S session_name

#Detach from Linux Screen Session
# Ctrl+a d

$ screen -ls

$ screen -r
```
*Shortcuts*
|   Shortcut    | Description                                        |
| :-----------: | :------------------------------------------------- |
|   Ctrl+a ?    | Display all shortcut                               |
|   Ctrl+a c    | Create a new window (with shell)                   |
|   Ctrl+a "    | List all window                                    |
|   Ctrl+a 0    | Switch to window 0 (by number )                    |
|   Ctrl+a A    | Rename the current window                          |
|   Ctrl+a S    | Split current region horizontally into two regions |
|    Ctrl+a     | Split current region vertically into two regions   |
|  Ctrl+a tab   | Switch the input focus to the next region          |
| Ctrl+a Ctrl+a | Toggle between the current and previous region     |
|   Ctrl+a Q    | Close all regions but the current one              |
|   Ctrl+a X    | Close the current region                           |





## Files

#### Find

Search for files in a directory hierarchy

```bash
    #change permissions of all folders
    find ./ -type d -exec chmod 0755 {} \; -print
    #change permissions of all files
    find ./ -type f -exec chmod 0644 {} \; -print
    #find all files and print the name
    for file in "$( find ./ -type f )"
    do
        echo "$file"
    done | sort >> ./files.lst
    #find all directories ( in max depth 2 ) and list them
    find . -maxdepth 2 -type d -ls
```

### Manage Files Content

#### paste

Merge lines of files

```bash
    $ ( echo -e "odd\neven" && seq 10) | paste  - - ;
    #odd	even
    #1      2
    #3	    4
    #5	    6
    #7	    8
    #9	    10
```

[Read More](https://www.gnu.org/software/coreutils/paste)

#### sed

Stream editor for filtering and transforming text

```bash
    echo "gray red grayblack Grey" | sed 's/\bgr[ae]y\b/blue/gI' #blue red grayblack blue

    echo "+30 690000000" | sed 's/[[:digit:]]/X/' #+XX XXXXXXXXX

    echo "James Bond" | sed -E 's/(.*) (.*)/My name is \2, \1 \2/' #My name is Bond, James Bond

    #Match all the words that the first half word is same with the other half
    sed -E -n '/^(.*)\1$/p'cd /words



```

#### awk

Pattern scanning and processing language

```bash

$ awk -F'[[:space:]]' 'BEGIN { printf "Active Hosts\n%-45s %-25s\n", "IP", "Domain";} \
{\
if($0 != "" && !/^#/){\
    printf "%-45s %-25s\n", $1, $NF;\
}\
}\
 END{print "--------------";\
 }'  /etc/hosts
 

```

#### wc
Counts the number of bytes, characters, whitespace-separated words,
and newlines in each given FILE, or standard input if none are given or

```bash
#Counts the lines of a file 
wc -l <filename> 
```
<!---
## File Permissions
-->