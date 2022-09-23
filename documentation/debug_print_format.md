# Debug Print Format

This functionality permits to print as a String an AST, in a format easy to inspect for a human.

For example, given this AST: `Add(Add(Number(3), Number(9)), Number(1))`

We could produce this string:
```
Add {
  left = [
    Add {
      left = [
        Number {
          value = 3
        } // Number
      ]
      right = [
        Number {
          value = 9
        } // Number
      ]
    } // Add
  ]
  right = [
    Number {
      value = 1
    } // Number
  ]
} // Add
```

We can use a `DebugPrintConfiguration` instance to control which elements to filter, if to print empty lists, etc.


_This feature is present in Kolasu but it will not be necessarily replicated in all libraries_.

_See in [Kolasu](https://github.com/Strumenta/kolasu/blob/master/core/src/main/kotlin/com/strumenta/kolasu/model/Printing.kt)_

_This is not yet supported in Pylasu._
