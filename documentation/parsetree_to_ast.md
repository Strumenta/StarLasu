# Parse Tree to AST mapping

Suppose we have a simple language and we want to parse this piece of code:

```
set foo = 123
display 456
```

We would like to parse this with ANTLR, and then translate the resulting parse-tree into an AST. StarLasu offers _transformers_ to implement such mappings:

```kotlin
val transformer = ParseTreeToASTTransformer()
transformer.registerNodeFactory(SimpleLangParser.CompilationUnitContext::class, CU::class)
    .withChild(SimpleLangParser.CompilationUnitContext::statement, CU::statements)
transformer.registerNodeFactory(SimpleLangParser.DisplayStmtContext::class) { ctx ->
    DisplayIntStatement(value = ctx.expression().INT_LIT().text.toInt())
}
transformer.registerNodeFactory(SimpleLangParser.SetStmtContext::class) { ctx ->
    SetStatement(variable = ctx.ID().text, value = ctx.expression().INT_LIT().text.toInt())
}

val transformedCU = transformer.transform(pt)!!
// The result would be equivalent to the following:
val cu = CU(
    statements = listOf(
        SetStatement(variable = "foo", value = 123).withParseTreeNode(pt.statement(0)),
        DisplayIntStatement(value = 456).withParseTreeNode(pt.statement(1))
    )
).withParseTreeNode(pt)
```        

_See in [Kolasu](https://github.com/Strumenta/kolasu/tree/master/core/src/main/kotlin/com/strumenta/kolasu/mapping)_.

