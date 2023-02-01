# Building a code generator

A code generator is a component that given an AST permits to generate code (i.e., text).

It can be a component inside a [transpiler](building-transpiler.md), or it can be used by itself to output source code 
from an AST that we've constructed programmatically (that is, explicitly creating and combining nodes, rather than
starting from the output of a parser).

This use case is currently being improved in StarLasu. At the moment, we're experimenting in internal projects such as
StarLasu-Tools (to generate Kotlin and Python). In the future more support is planned to be added in StarLasu itself.

For more information about code generation options and techniques, please refer to our [Guide to Code Generation](https://tomassetti.me/code-generation/).
