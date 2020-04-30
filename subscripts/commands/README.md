
## Files

#### Find

Search for files in a directory hierarchy

```bash
    #change permissions of all folders
    find ./ -type d -exec chmod 0755 {} \; -print
    #change permissions of all files
    find ./ -type f -exec chmod 0644 {} \; -print

    for file in "$( find ./ -type f )"
    do
        echo "$file"
    done | sort >> ./files.lst
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
<!---
## File Permissions
-->