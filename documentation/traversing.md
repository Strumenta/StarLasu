# Traversing the AST

Given an AST there is one essential operation we may want to do: find nodes of a given type. We can search for nodes of a given type in two 
directions: looking among descendants of the current node and look among ancestors.

For example, given a field declaration we may want to know in which class is declared. In that case we will look for the closest ancestor 
of type ClassDeclaration.

On the other hand, we may identify all the return statement inside a MethodDeclaration. In that case we will look for them among the descendants 
of the node.

_See in [Kolasu](https://github.com/Strumenta/kolasu/blob/master/core/src/main/kotlin/com/strumenta/kolasu/model/Traversing.kt)_.
