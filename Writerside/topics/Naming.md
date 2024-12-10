# Naming

Two interfaces are defined:

- PossiblyNamed, which define an attribute name of type String with multiplicity 0..1
- Named, which extends PossiblyNamed and define an attribute name of type String with multiplicity 1..1

For example, a FunctionDeclaration will be PossiblyNamed in languages which permits anonymous functions.

In the StarLasu libraries we provide special support for things which are Named or PossiblyNamed. We can used these interfaces in [Symbol Resolution](https://github.com/Strumenta/StarLasu/blob/main/documentation/symbol_resolution.md), for example.