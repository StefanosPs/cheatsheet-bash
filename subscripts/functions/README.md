

### Declare functions  
```bash

    name () compound-command [ redirections ]
    #or
    function name [()] compound-command [ redirections ]

```

### Variable Scope 
```bash

    func1(){
        local var='func1 local'
        echo "In func1, var = '$var'"
        func2
    }

    func2(){
        echo "In func2, var = '$var'"
    }

    local var=global  
    func1

    echo "Global var = '$var'"
```
