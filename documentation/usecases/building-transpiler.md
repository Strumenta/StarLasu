# Building a transpiler

The general approach to designing transpilers has been described in the article [How to write a transpiler](https://tomassetti.me/how-to-write-a-transpiler/).

In general these are the steps:

- The original code is parsed, obtaining the original AST (see [Building parsers](https://github.com/Strumenta/StarLasu/blob/main/documentation/usecases/building-parser.md))
- Transformations are performed to go from the original AST to the target AST (see [AST Transformations](https://github.com/Strumenta/StarLasu/blob/main/documentation/transformations.md)). If necessary intermediate transformations are added in between
- Target code is generated from the target AST (see [Building code generators](https://github.com/Strumenta/StarLasu/blob/main/documentation/usecases/building-codegenerator.md))

For example, let's suppose we want to translate RPG into Java:

- We will use an [RPG Parser](https://strumenta.com/parser-for-rpg/), obtaining an RPG AST
- We will implement AST transformations to transform the RPG AST into a Java AST
- We will use the Java codegenerators to generate Java code from the Java AST

