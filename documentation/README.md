# StarLasu: Introduction

StarLasu is a set of a library to work with Abstract Syntax Trees.

Examples of applications that could use StarLasu:
* Transpilers
* Parsers
* Code editors
* Code analyzers
* Linters
* Refactoring tools

## Content of the documentation

At its core StarLasu permits to [define ASTs](https://github.com/Strumenta/StarLasu/blob/main/documentation/ast_definition.md).

The nodes of each AST can specify [positions](https://github.com/Strumenta/StarLasu/blob/main/documentation/position.md). Related to this topic, nodes can specify their origins or their destinations (i.e., things they can be generated from them). This is discussed under [Origin and Destination](https://github.com/Strumenta/StarLasu/blob/main/documentation/origin_and_destination.md).

StarLasu provides APIs for [traversing ASTs](https://github.com/Strumenta/StarLasu/blob/main/documentation/traversing.md) and for [transforming ASTs](https://github.com/Strumenta/StarLasu/blob/main/documentation/transformations.md).

Other APIs support:
- [Printing ASTs for debugging purposes](https://github.com/Strumenta/StarLasu/blob/main/documentation/debug_print_format.md)
- [Serialization of ASTs to different formats](https://github.com/Strumenta/StarLasu/blob/main/documentation/serialization.md)

### Advanced usages

[Naming](https://github.com/Strumenta/StarLasu/blob/main/documentation/naming.md) is an important aspect, because it permits the implementation of [symbol resolution](https://github.com/Strumenta/StarLasu/blob/main/documentation/symbol_resolution.md).

There is also support for the definition of [typesystems](https://github.com/Strumenta/StarLasu/blob/main/documentation/typesystem.md).

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
