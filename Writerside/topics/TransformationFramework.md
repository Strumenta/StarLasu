# Transformation Framework

In general we may want to process ASTs and use their information to produce something else. For example, to generate a diagram or to generate code.

A particular case is the transformation of an AST into another AST. This is typically done within transpilers.

## Example of refactoring within the same language

One usage of transformations is to perform refactoring within the same AST. For example, let's suppose that we have this language:

```
enum class Operator {
    PLUS, MULT
}
sealed class Expression : Node()
data class IntLiteral(val value: Int) : Expression()
data class GenericBinaryExpression(val operator: Operator, val left: Expression, val right: Expression) : Node()
data class Mult(val left: Expression, val right: Expression) : Node()
data class Sum(val left: Expression, val right: Expression) : Node()
```

We then decide to transform an AST by removing instances of `GenericBinaryExpression` and replace them with `Mult` or `Sum`. We can do that in this way:

```
val myTransformer = ASTTransformer(allowGenericNode = false).apply {
    registerNodeFactory(GenericBinaryExpression::class) { source: GenericBinaryExpression ->
        when (source.operator) {
            Operator.MULT -> Mult(transform(source.left) as Expression, transform(source.right) as Expression)
            Operator.PLUS -> Sum(transform(source.left) as Expression, transform(source.right) as Expression)
        }
    }
    // This may benefit of specific support: for example a NodeFactory that returns the same element
    registerNodeFactory(IntLiteral::class) { source: IntLiteral -> source }
}
assertASTsAreEqual(
    Mult(IntLiteral(7), IntLiteral(8)),
    myTransformer.transform(GenericBinaryExpression(Operator.MULT, IntLiteral(7), IntLiteral(8)))!!
)
assertASTsAreEqual(
    Sum(IntLiteral(7), IntLiteral(8)),
    myTransformer.transform(GenericBinaryExpression(Operator.PLUS, IntLiteral(7), IntLiteral(8)))!!
)
```

## Example of translation to another language

Let's consider two languages. In this example they have exactly the same structure:

```
sealed class ALangExpression : Node()
data class ALangIntLiteral(val value: Int) : ALangExpression()
data class ALangSum(val left: ALangExpression, val right: ALangExpression) : ALangExpression()
data class ALangMult(val left: ALangExpression, val right: ALangExpression) : ALangExpression()

sealed class BLangExpression : Node()
data class BLangIntLiteral(val value: Int) : BLangExpression()
data class BLangSum(val left: BLangExpression, val right: BLangExpression) : BLangExpression()
data class BLangMult(val left: BLangExpression, val right: BLangExpression) : BLangExpression()
```

While this is a toy example it is true that many languages shares similar structures. Think of literals, mathematical operations, or basic control flow structures such as if-statements: they have the same structures in languages which are very different.

We could build a transformer that given an AST of `ALang` produces the corresponding AST of `BLang`:

```
val myTransformer = ASTTransformer(allowGenericNode = false).apply {
    registerNodeFactory(ALangIntLiteral::class) { source: ALangIntLiteral -> BLangIntLiteral(source.value) }
    registerNodeFactory(ALangSum::class) { source: ALangSum ->
        BLangSum(transform(source.left) as BLangExpression, transform(source.right) as BLangExpression)
    }
    registerNodeFactory(ALangMult::class) { source: ALangMult ->
        BLangMult(transform(source.left) as BLangExpression, transform(source.right) as BLangExpression)
    }
}
assertASTsAreEqual(
    BLangMult(
        BLangSum(
            BLangIntLiteral(1),
            BLangMult(BLangIntLiteral(2), BLangIntLiteral(3))
        ),
        BLangIntLiteral(4)
    ),
    myTransformer.transform(
        ALangMult(
            ALangSum(
                ALangIntLiteral(1),
                ALangMult(ALangIntLiteral(2), ALangIntLiteral(3))
            ),
            ALangIntLiteral(4)
        )
    )!!
)
```