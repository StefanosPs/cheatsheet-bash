### `until` loop

```bash
    until test-commands; do 
        consequent-commands; 
    done
```

### `while` loop

```bash
    while test-commands; do 
        consequent-commands; 
    done
```

### `for` loop

```bash
    for name [ [in [words …] ] ; ] do 
        commands; 
    done
    
    # or 

    for (( expr1 ; expr2 ; expr3 )) ; do 
        commands ; 
    done
```