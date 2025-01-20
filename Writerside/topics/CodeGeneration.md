# Code Generation

Code Generation modules are useful to generate new files programmatically. This is the case when building a transpiler, where there is the need to generate text (code) from an AST representation.

Currently, Code Generation modules can be written with Kolasu and SharpLasu.

## Setup 

The Code Generation implementation should be separated from any other modules and be called code-generation. This module will typically have as dependency an ast module. Next is presented an `build.gradle.kts` file example for a code generation module.
Note that currently the gradle starlasu plugin is private.
``` kotlin
import com.strumenta.starlasugradleplugin.addGitHubPackagesRepo

plugins {
    id("org.jetbrains.kotlin.jvm")
    id("java-library")
    id("org.jlleitschuh.gradle.ktlint")
    id("maven-publish")
    id("antlr")
    id("com.github.johnrengelman.shadow")
    id("com.google.devtools.ksp")
    id("com.strumenta.starlasu")
}

dependencies {
    api(project(":ast"))
    implementation("org.apache.logging.log4j:log4j-api-kotlin:1.2.0")
    implementation("org.apache.logging.log4j:log4j-api:2.20.0")
    implementation("org.apache.logging.log4j:log4j-core:2.20.0")

    implementation("commons-io:commons-io:2.13.0")
    implementation("com.google.code.gson:gson:2.10.1")

    implementation("com.github.ajalt.clikt:clikt:3.5.0")
}
```

## Generation rules

The Code Generator class should be a subclass of `ASTCodeGenerator`, this class needs to override the `registerRecordPrinters` function. This function will contain a `recordPrinter` for each AST node, the implementation of the recordPrinter will determine the output generated for the node type.

``` kotlin
class MyCodeGenerator : ASTCodeGenerator() {
    override fun registerRecordPrinters() {
        recordPrinter<MyNode> { 
            print(it.field)
            indent()
            println(it.field2)
            dedent()
            printList(prefix = "", postfix = "", elements = it.children, separator = "\n")
            printFlag(it.flag,"Flag is true")
        }
    }
}
``` 

The methods to generate code are quite simple and intuitive to use:
- `print` is used to print a simple string;
- `println` is used to print a string followed by a new line;
- `printList` is used to print a list of nodes; You can specify a prefix, suffix and separator;
- `printFlag` is used to print a string if a condition (flag which is a boolean value) is true;
- `indent` is used to increase the indentation level which will be checked by the `print` and `println` methods; 
- `dedent` is used to decrease the indentation level which will be checked by the `print` and `println` methods.

## Testing

There is the need to know how the generated code should look like. 

For that unit testing can be done by writing the expected output in a file/string and comparing the generated output with the expected output using as input a manually created AST.

It is also a good practise to have end-to-end tests, and one can follow 2 methods:

1. AST to AST testing:

   - Parse an input file that contains the original code, obtaining a first AST;
   - Generate the code from this first AST, obtaining the generated code;
   - Reparse the generated code, obtaining a second AST;
   - Compare the first and the second AST.

This testing method is useful to test large examples, where it is hard to write the expected output manually. It allows to test the code generation in a more abstract way, where we check that the produced AST matches the one we expect. Of course it lacks coverage for code styling and formatting.

2. AST to code testing:

   - Parse a string that contains the original code to the target AST representation;
   - Generate the code from the target AST;
   - Compare the expected output with the generated output.

This testing method is useful to test smaller examples and cover styling and formatting of the code. It allows to test the code generation in a more concrete way, where we check that the produced code matches the one we expect.
