# Building a parser

Building parsers is the most traditional use case. Kolasu was initially created with this goal in mind and tens of commercial parsers have been 
implemented with it.

Our preferred approach is to initially use an ANTLR parser and then wrap it with StarLasu ASTs.

## Process

Initially, we define an ANTLR grammar. Then, we define AST classes are using StarLasu. 
An initial version may also be generated from the ANTLR grammar, by using StarLasu-Tools.

We then organize the parser into a pipeline:

1. First-stage parsing using ANTLR. We obtain a parse tree and, possibly, a series of errors.
2. Second-stage parsing. [The parse tree is mapped into the AST](../parsetree_to_ast.md)
3. Potentially, for some parsers, we perform additional steps, such as:
   1. [Symbol resolution](../symbol_resolution.md)
   2. [Type checking](../typesystem.md)
   3. Advanced calculations such as lineage, data flow analysis, linting, etc.

The StarLasu ASTs provide a more convenient API with respect to the ANTLR APIs for parse trees. In fact, StarLasu comes 
with additional features such as serialization and support for symbol resolution. Finally, when mapping the parse tree
into an AST, we drop implementation details of the grammar from the tree, and we organize the information in the most 
convenient way for users.

