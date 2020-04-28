### Array

#### Array Declaration

```bash
    array=({a..z..2})
```

| Parameter                       | Description                                      |
| ---			                  | ---                                              |
| `${array[*]}`                   | All parameters  `("$*" => "$1c$2c ... c${N}")`   |
| `${array[@]}` *                 | All parameters  `("$@" => "$1" "$2" ... "${N}")` |
| `${#array[@]}`                  | Count all elements in an array.                  |
| `${array[@]:3:2}`               | Array slice                                      |
| `array=("${array[@]}" "steve")` | Add Element                                      |
| `unset array[num]`              | Delete element @ num                             |

\* When '@' is used and the expansion appears within double quotes, each variable name expands to a separate word.

[HOME](../../README.md)