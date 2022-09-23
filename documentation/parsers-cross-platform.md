# Cross-platform parsers

Different users may want to use our parsers from different platforms such as the browser, Python, the JVM, etc.

On the other hand we want to avoid having to rewrite the parsers for the same languages across multiple platforms. For this reason we have developed an approach to use parsers across platforms. In essence, we write a parser for any platform we want, using Kolasu, Pylasu, or Tylasu. We then access the AST produced by such parsers on another platform by serializing the AST produced on one platform and unserializing it on another one. To make this possible we built tools to:

- analyze the codebase of the original parser and extract a metamodel
- generate AST classes on the other platforms from the metamodel
- generate an AST unserializers from the metamodel

In this way we could write a parser for RPG in Kotlin, using Kolasu. We would then automatically generate equivalent AST classes in Pylasu, and code to unserialize an AST instantiating those AST classes. In the end, we would obtain a parser usable from Python, which expose AST classes in Python. The implementation would call the parser written in Kotlin, obtain the AST serialized and unserialize it behind the scenes.

