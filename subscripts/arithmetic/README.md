### Arithmetic

#### let 
A builtin function of Bash that allows us to do simple arithmetic.

```bash
	let <arithmetic expression>
```

#### expr 
Is similar to let except instead of saving the result to a variable it instead prints the answer.

```bash
	expr item1 operator item2
```

#### Arithmetic Expansion  (Double parentheses)
In the section on Variables we saw that we could save the output of a command easily to a variable. It turns out that this mechanism is also able to do basic arithmetic for us if we tweak the syntax a little.

```bash
	$(( expression ))
```
[HOME](../../../README.md)