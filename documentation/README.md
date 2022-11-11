# StarLasu: Overview

StarLasu is a methodology to design and implement Language Engineering applications.
The methodology is supported by a set of libraries that permit its application on different platforms.

The libraries are:

- [Kolasu](https://github.com/strumenta/kolasu), for the implementation on the JVM (and in particular with Kotlin and Java)
- [Tylasu](https://github.com/strumenta/tylasu), for the implementation on Node.JS and on the browser, using Typescript or Javascript
- [Pylasu](https://github.com/strumenta/pylasu), for the implementation with Python
- [Cslasu](https://github.com/strumenta/Cslasu), for the implementation with C#

Examples of applications that could use StarLasu:

- Transpilers
- Parsers
- Code editors
- Code analyzers
- Linters
- Refactoring tools

These libraries permit to work with Abstract Syntax Trees (ASTs).

StarLasu can be used to build different modules producing ASTs, enriching ASTs, transforming ASTs, and finally consuming ASTs. These modules can be combined to produce different pipelines for different goals.

The name StarLasu is derived from `*lasu`, to indicate all the libraries part of the family. The suffix `lasu` stands for Language Support. The original library has been Kolasu, which stands for _Kotlin Language Support_. Successive libraries have taken derived names.

## Support on the different platforms

The different libraries have a different level of maturity. While eventually all libraries should be aligned, as of this moment Kolasu has all the features, Tylasu has most of them, while Pylasu has support for the main features.

## Goal of this document

The goal of this document is to list the features provided by StarLasu and to describe the strategy suggested for implementing certain features. It should also help ensuring that the different libraries for the different languages provide the same features under the same logic.

This is not a substitution for library-specific tutorials.

## Typical usages of StarLasu

These are the most typical applications that could be designed using StarLasu:

- [Building a parser](https://github.com/Strumenta/StarLasu/blob/main/documentation/usecases/building-parser.md)
- [Building a transpiler](https://github.com/Strumenta/StarLasu/blob/main/documentation/usecases/building-transpiler.md)
- [Building a code generator](https://github.com/Strumenta/StarLasu/blob/main/documentation/usecases/building-codegenerator.md)

StarLasu can be used to develop other Language Engineering applications (for example, insider editors, to provide Language Intelligence). One of the goals of StarLasu is indeed to provide modularity, in according to the principles of Model Driven Development. Because of this, the different modules built with StarLasu can be combined in original ways, for many different purposes.

## Features of StarLasu

At its core StarLasu permits to [define ASTs](https://github.com/Strumenta/StarLasu/blob/main/documentation/ast_definition.md).

The nodes of each AST can specify [positions](https://github.com/Strumenta/StarLasu/blob/main/documentation/position.md). Related to this topic, nodes can specify their origins or their destinations (i.e., things they can be generated from them). This is discussed under [Origin and Destination](https://github.com/Strumenta/StarLasu/blob/main/documentation/origin_and_destination.md).

StarLasu provides APIs for [traversing ASTs](https://github.com/Strumenta/StarLasu/blob/main/documentation/traversing.md) and for [transforming ASTs](https://github.com/Strumenta/StarLasu/blob/main/documentation/transformations.md).

Other APIs support:

- [Printing ASTs for debugging purposes](https://github.com/Strumenta/StarLasu/blob/main/documentation/debug_print_format.md)
- [Serialization of ASTs to different formats](https://github.com/Strumenta/StarLasu/blob/main/documentation/serialization.md)

### Advanced usages

[Naming](https://github.com/Strumenta/StarLasu/blob/main/documentation/naming.md) is an important aspect, because it permits the implementation of [symbol resolution](https://github.com/Strumenta/StarLasu/blob/main/documentation/symbol_resolution.md).

It is also panned to add support for the definition of [typesystems](https://github.com/Strumenta/StarLasu/blob/main/documentation/typesystem.md).

### Code generation

StarLasu has been initially focus on creating parsers, but these parsers have been often used to created code generators. For this reason, work is going on to support [code generation](https://github.com/Strumenta/StarLasu/blob/main/documentation/code_generation.md). When we have both a parser and a code generator for the same language we can define a [language module](https://github.com/Strumenta/StarLasu/blob/main/documentation/language_module.md).

### Other topics

- [Definition of common elements across languages](https://github.com/Strumenta/StarLasu/blob/main/documentation/ast_common_elements.md)
- [Definition of Command Line Tools](https://github.com/Strumenta/StarLasu/blob/main/documentation/cli_tools.md)
- [Translation of ANTLR parse trees into ASTs](https://github.com/Strumenta/StarLasu/blob/main/documentation/parsetree_to_ast.md)
- [Validation](https://github.com/Strumenta/StarLasu/blob/main/documentation/validation.md)
- [Testing](https://github.com/Strumenta/StarLasu/blob/main/documentation/testing.md)
- [EMF](https://github.com/Strumenta/StarLasu/blob/main/documentation/emf.md)
- [Strumenta Playground](https://github.com/Strumenta/StarLasu/blob/main/documentation/playground.md)
- [Parsers cross-platform](https://github.com/Strumenta/StarLasu/blob/main/documentation/parsers-cross-platform.md)

