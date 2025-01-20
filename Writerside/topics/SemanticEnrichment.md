# Semantic Enrichment

People who are new to parser development may attempt to enforce grammar-level type coherence. For example, defining that a variable declared with type int can only have a subset of the expression types as its initial value, that doesn't work and can increase the complexity of writing a grammar and still not obtaining the desired constraints.

In general, it is preferable to be less strict in the grammar and Parse Tree to AST Mapping, identifying discrepancies as the final AST processing step.

The benefits of doing so are:

- Simpler grammars;
- Better error messages;

Semantic checks are the mechanisms that are meant to check/identify possible discrepancies in a syntactically correct input. It is an advanced feature and it is not implemented in most parsers, only when specifically requested/needed.

## Semantic Checks

- [](SymbolResolution.md);
- Type System checks;
- Other checks such as:
  - Two symbols with the same name declared in the same scope;
  - Variables used before being declared;
  - etc...
