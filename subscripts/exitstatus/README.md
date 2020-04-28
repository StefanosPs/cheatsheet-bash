### Exit Status

#### Capture exit code 

```bash
    $?
```
#### Send exit code

```bash
    # Will exit with status of last command.
    exit $?

     # will terminate the running script and return the exit code of the last command executed before exit.
    exit
```

### Reserved Exit Status

| Exit Status    | Description                                                                                    |
| :---           | ---                                                                                            |
| `0`            | Success                                                                                        |
| `1`            | Catchall for general errors                                                                    |
| `2`            | Misuse of shell builtins (according to Bash documentation)                                     |
| `126`          | Command invoked cannot execute                                                                 |
| `127`          | "command not found"                                                                            |
| `128`          | Invalid argument to exit                                                                       |
| `128+n`        | Fatal error signal "n"                                                                         |
| `130`          | Script terminated by Control-C `Ctrl-C is fatal error signal 2, (130 = 128 + 2, see above)`    |
| `255*`         | Exit status out of range                                                                       |

[HOME](../../README.md)