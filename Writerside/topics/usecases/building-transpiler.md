# Building a transpiler

The general approach to design transpilers has been described in the article [How to write a transpiler](https://tomassetti.me/how-to-write-a-transpiler/).

In general these are the steps:

- The original code is parsed, obtaining the original AST (see [Building parsers](building-parser.md))
- Transformations are performed to go from the original AST to the target AST (see [AST Transformations](../transformations.md)). If necessary, we can add intermediate transformation steps.
- Target code is generated from the target AST (see [Building code generators](building-codegenerator.md))

For example, suppose we want to translate RPG into Java:

- We will use an [RPG Parser](https://strumenta.com/parser-for-rpg/), obtaining an RPG AST.
- We will implement AST transformations to transform the RPG AST into a Java AST, defined using e.g. Kolasu. The Java 
  AST specifically is a component that Strumenta has developed and can license. However, it's also possible to build 
  another one independently, using Kolasu or other StarLasu libraries.
- We will use a [code generator](building-codegenerator.md) to generate Java code from the Java AST. The code generator
  could be a pre-built component, too, or we may develop it with support from StarLasu and possibly other libraries (e.g. a templating engine).

