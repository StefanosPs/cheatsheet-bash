
### Conditional Expressions

Conditional expressions are used by the [[ compound command and the test and [ builtin commands.

#### For Files

| Expression             | Description                                                                                                |
| :---                   | :---                                                                                                       |
| `[-a file]`            | True if file exists.                                                                                       |
| `[-d directory]`       | True if directory exists.                                                                                  |
| `[-s file]`            | True if file exists and has a size greater than zero.                                                      |
| `[[-r][-w][-x]] file]` | True if file exists and is readable or writable or executable.                                                   |
| `[-L] file]`           | True if file exists and is a symbolic link.                                                                |
| `file1 -ef file2`      | True if file1 and file2 refer to the same device and inode numbers.                                        |
| `file1 -nt file2`      | True if file1 is newer (according to modification date) than file2, or if file1 exists and file2 does not. |
| `file1 -ot file2`      | True if file1 and file2 refer to the same device and inode numbers.                                        |

#### For Numbers
| Expression             | Description                            |
| :---                   | :---                                   |
| `[arg1 -eq arg2]`      | arg1 is equal to arg2.                 |
| `[arg1 -ne arg2]`      | arg1 is not equal to arg2.             |
| `[arg1 -lt arg2]`      | arg1 is less than arg2.                |
| `[arg1 -le arg2]`      | arg1 is less than  or equal to arg2.   |
| `[arg1 -qt arg2]`      | arg1 is greater than arg2.             |
| `[arg1 -qe arg2]`      | arg1 is greater than or equal to arg2. |

#### For Strings

| Expression             | Description                                             |
| :---                   | :---                                                    |
| `[-z string]`          | True if the length of string is zero.                   |
| `[-n string] [string]` | True if the length of string is non-zero.               |
| `[string1 == string2]` | True if the strings are equal.                          |
| `[string1 != string2]` | True if the strings are not equal.                      |
| `[string1 < string2]`  | True if string1 sorts before string2 lexicographically. |

[HOME](../../../README.md)
