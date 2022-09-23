# Origin and Destination

A Node can have an _Origin_. An Origin indicates where the nodes come from. 

Let's see some examples:
- In the case of Nodes built by a parser, the Origin will indicate a point in some source file. 
- In the case of Nodes built by a transformer, the Origin may indicate some Node which provided the original information. 

Consider this example: we are building a transpiler from RPG to Java. 

We first build an RPG parser that given RPG code product an RPG AST. The root of the AST may have type RPGCompilationUnit. The origin of an RPGCompilationUnit will represent the RPG file name and the position in that file. In the case of the root a position ranging from the first character of the first line, to the last character of the last line.

Then we build a transformer that given an RPG AST produces a Java AST. The root of such AST may have type JavaCompilationUnit. The origin of a JavaCompilationUnit will refer to another node, in this case having type RPGCompilationUnit.

In a Node we may also indicate what can be created from a Node. For example, if we build programmatically an AST and then we want to generate code from it, we may want to specify for each node what portion of code has been generated. For example, a node representing an If Statement in Java could end up being represented by a 5 lines of Java code inside a large Java file. In that case, the Destination will specify the name of the file and the lines and columns representing our If Statement.

