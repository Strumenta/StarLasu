# StarLasu: Overview

StarLasu is a methodology to design and implement Language Engineering applications.
The methodology is supported by a set of libraries that permit its application on different platforms.

The libraries are:

- [Kolasu](https://github.com/strumenta/kolasu), for the implementation on the JVM (and in particular with Kotlin and Java)
- [Tylasu](https://github.com/strumenta/tylasu), for the implementation on Node.js and on the browser, using Typescript or Javascript
- [Pylasu](https://github.com/strumenta/pylasu), for the implementation with Python
- [Sharplasu](https://github.com/strumenta/sharplasu), for the implementation with C#

Examples of applications that could use StarLasu:

- Transpilers
- Parsers
- Code editors
- Code analyzers
- Linters
- Refactoring tools

StarLasu libraries permit to work with Abstract Syntax Trees (ASTs). These are tree-like data structures to represent 
the information contained in a piece of formal language or "code". For example, the statements in a procedural program,
the data elements in a SQL query, or the steps in a business workflow.

We can use the StarLasu libraries to build different modules producing ASTs, enriching ASTs, transforming ASTs, and 
finally consuming ASTs. These modules can be combined into different _pipelines_ for different goals. E.g., a parser
will transform a lower-level parse tree into a higher-level AST, then perhaps resolve names and references, and 
type-check the code. A transpiler will also perhaps transform the source code into some intermediate representation, 
then into the target language AST, from which it will generate the resulting code string.   

The name StarLasu is derived from `*lasu`, to indicate all the libraries part of the family. The suffix `lasu` stands 
for Language Support. The original library has been Kolasu, which stands for _Kotlin Language Support_. Successive 
libraries have taken derived names.

## Support on the different platforms

The different libraries have a different level of maturity. While eventually all libraries should be aligned, as of this
moment Kolasu has all the features, Tylasu has most of them, while Pylasu has support for the main features.

## Goal of this document

The goal of this document is to list the features provided by StarLasu and to describe the strategy suggested for 
implementing certain features. It should also help ensuring that the different libraries for the different languages
provide the same features with the same logic.

This is not a substitution for library-specific tutorials. Please refer to each individual library for additional
resources, API documentation, etc.

## Typical usages of StarLasu

These are the most typical applications of StarLasu:

- [Building a parser](usecases/building-parser.md)
- [Building a code generator](usecases/building-codegenerator.md)
- [Building a transpiler](usecases/building-transpiler.md)

StarLasu can be used to develop other Language Engineering applications (for example, inside editors, to provide 
Language Intelligence). One of the goals of StarLasu is indeed to provide modularity, in according to the principles of 
Model-Driven Development. Because of this, the different modules built with StarLasu can be combined in original ways, 
for many different purposes.

## Features of StarLasu

At its core StarLasu permits to [define ASTs](https://github.com/Strumenta/StarLasu/blob/main/documentation/ast_definition.md).

The nodes of each AST can specify [positions](https://github.com/Strumenta/StarLasu/blob/main/documentation/position.md). Related to this topic, nodes can specify their origin and destination (i.e., the object they've been generated from, and the object that's been generated from them). 
This is discussed under [Origin and Destination](https://github.com/Strumenta/StarLasu/blob/main/documentation/origin_and_destination.md).

StarLasu provides APIs for [traversing ASTs](https://github.com/Strumenta/StarLasu/blob/main/documentation/traversing.md) and for [transforming ASTs](https://github.com/Strumenta/StarLasu/blob/main/documentation/transformations.md).

On top of the above core features, StarLasu builds several advanced concepts, detailed in the following sections. 

### Symbol Resolution

[Symbol Resolution](https://github.com/Strumenta/StarLasu/blob/main/documentation/symbol_resolution.md)
is the process of giving a _meaning_ to the each _name_ in the source code. For example:
* to connect a given use of a variable to its declaration;
* to reconstruct the definition of a SQL column from an alias in a subquery;
* to identify a user-defined therapy plan in a medical support DSL. 

Symbol resolution relies on the [naming](https://github.com/Strumenta/StarLasu/blob/main/documentation/naming.md) 
facilities in StarLasu.

### Type Systems

We're also planning to add support for the definition of [type systems](https://github.com/Strumenta/StarLasu/blob/main/documentation/typesystem.md).

### Code Generation

Initially, with StarLasu we focused on creating parsers. However, ASTs are also useful to build code generators. 
For this reason, work is going on to support [code generation](https://github.com/Strumenta/StarLasu/blob/main/documentation/code_generation.md)
in StarLasu. When we have both a parser and a code generator for the same language, we can define a
[language module](https://github.com/Strumenta/StarLasu/blob/main/documentation/language_module.md).

### Other Features

Other APIs include:

- [Printing ASTs for debugging purposes](https://github.com/Strumenta/StarLasu/blob/main/documentation/debug_print_format.md)
- [Serialization of ASTs to different formats](https://github.com/Strumenta/StarLasu/blob/main/documentation/serialization.md)
- [Definition of common elements across languages](https://github.com/Strumenta/StarLasu/blob/main/documentation/ast_common_elements.md)
- [Definition of Command Line Tools](https://github.com/Strumenta/StarLasu/blob/main/documentation/cli_tools.md)
- [Translation of ANTLR parse trees into ASTs](https://github.com/Strumenta/StarLasu/blob/main/documentation/parsetree_to_ast.md)
- [Validation](https://github.com/Strumenta/StarLasu/blob/main/documentation/validation.md)
- [Testing](https://github.com/Strumenta/StarLasu/blob/main/documentation/testing.md)
- [EMF](https://github.com/Strumenta/StarLasu/blob/main/documentation/emf.md)
- [Strumenta Playground](https://github.com/Strumenta/StarLasu/blob/main/documentation/playground.md)
- [Build cross-platform Parsers](https://github.com/Strumenta/StarLasu/blob/main/documentation/parsers-cross-platform.md)

