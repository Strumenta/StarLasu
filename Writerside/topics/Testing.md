# Testing

StarLasu offers support for comparing parse trees and ASTs.

See `assertParseTreeStr`, `assertParsingResultsAreEqual`, and `assertASTsAreEqual` in Kolasu.

## Coverage of the grammar

Related to this, there is experimental support for verifying the Coverage of a grammar by the examples we have. See [CoverageListener](https://github.com/Strumenta/kolasu/blob/master/core/src/main/kotlin/com/strumenta/kolasu/parsing/coverage/CoverageListener.kt) in Kolasu.

The goal is that, given a grammar and a set of examples, we want to understand:

- How many possible paths in the grammar are covered
- Which alternatives are not covered, so that we can look for appropriate examples

Another solution is to verify the coverage of the generated ANTLR Parser.

## Performance testing

_To be written._

## Test the parser on examples

In practice it is often convenient to run the parser on a larget set of examples and just check if the parser can handle them without finding errors.
