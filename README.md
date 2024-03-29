# StarLasu
StarLasu is the missing link between source code and a convenient structure for its interpretation and manipulation: an AST.
When building an interpreter, transpiler, compiler, editor, static analysis tool, etc., at Strumenta we always implement the following pipeline:

Source code --ANTLR4 parser--> Parse tree __--StarLasu--> AST__ --Further processing--> ... --> Result

StarLasu is both the above methodology and a collection of runtime libraries to support it in Java, Kotlin, Python, Javascript, Typescript, and C#:

* [Kolasu](https://github.com/Strumenta/kolasu): it was the first library to be developed. It supports development in Kotlin and Java.
* [Tylasu](https://github.com/Strumenta/tylasu): it supports development in Typescript and Javascript. We're working to advance it to be on par with Kolasu.
* [Pylasu](https://github.com/Strumenta/pylasu): it supports development in Python. It is fairly recent but it is progressing quite rapidly.
* [Sharplasu](https://github.com/Strumenta/sharplasu): it supports development in C#. It is the most recently created and it is ongoing active development.

## Documentation

Documentation for StarLasu is available [here](https://github.com/Strumenta/StarLasu/tree/main/documentation).

## Publication

You will need pandoc with pdflatex (`brew install pandoc basictex`).

Updating the published version requires manually uploading the generated files to Netlify. At the moment Federico is the only one who has access.

You will need to run generatedoc.sh, then take the content of htmldoc and renamed the html file to index.html, zip the html file with the css directory and upload it to netlify.
