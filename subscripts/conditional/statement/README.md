### `if` Statement

```bash
if test-commands; then
  consequent-commands;
[elif more-test-commands; then
  more-consequents;]
[else alternate-consequents;]
fi
```

### `case`  statement

```bash
    case word in
        [ [(] pattern [| pattern]…) command-list ;;]…
    esac
```