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

### Manage Files System

#### chmod
The chmod command is fairly simple in itself, but giving the right permissions to files and directories is a whole different game.

```bash

chmod 664 robots.txt
chmod 775 public/images

```

#### tar
The Linux tar stands for tape archive. It is used for collecting many files into one archive file. 

```bash
tar -cvf my-archive.tar /path/to/directory

tar -xvf my-archive.tar -C /home/myfolder/
```

### Transfer Files 

#### scp
Remote secure copy

```bash

scp username@remotehost.com:/path/to/foobar.txt /some/local/directory

```

#### rsync

```bash

rsync -azP $SOURCECORE $DESTINATION

```

#### ftp copy

```bash

set ftp:ssl-allow no
open $HOST
user $USER $PASS
lcd $SOURCEFOLDER
mirror  --parallel=5 --reverse  --only-newer --verbose --exclude $EXCLUDE1 --exclude $EXCLUDE2 --exclude $EXCLUDE3 --exclude $EXCLUDE4 --exclude $EXCLUDE5 --exclude-glob .*  --exclude-glob *.md   $SOURCEFOLDER $TARGETFOLDER
bye

```


## Network

#### tcpdump
Capture the TCP layer packets on a production
server into a file, then open and view it with Wireshark

####  ss -s
Check the TCP connection status 



## Security
ssh-keygen command is used to generate a new SSH key pair. 
```bash
#Note that in the example above, we used the ED25519 signing algorithm. While ED25519 is considered best practice, you should always do some research on the different available signing algorithms.
ssh-keygen -t ed25519

```