# Traversing the AST

To process the information contained in an AST, we'll have to _traverse_ it. That is, process each node in a given sequence.

## Manual Traversal

We can traverse a tree "manually" i.e. programmatically following all relevant references in the nodes. E.g. start from 
the root node `Program`, then visit the contents of a child collection `statements`, and so on. 

However, this approach produces a traversal algorithm that depends on the precise structure of the AST. Therefore, the
algorithm is not reusable, and this approach doesn't scale over a growing number of node instances and node types. 
It's also brittle in evolving code bases where the structure of the AST changes over time. 

## Traversal Functions

So, StarLasu provides a number of generic traversal functions that we can apply and adapt to our ASTs for our use cases.
In languages where it's possible to do so, StarLasu exposes these functions as "extension methods" on the `Node` class. 
These functions do not return a collection of nodes, rather they are "generators" or "iterators" and similar concepts 
depending on the implementation language. These are facilities that return or "yield" one node after the other, in the intended sequence.

The basic traversal method is `walk`, that visits all the nodes in the tree in a depth-first sequence. 

_See an example in:_
- [Kolasu](https://github.com/Strumenta/kolasu/blob/ca96cc9200e26cee5674c0809fdff557b0ccbbc9/core/src/test/kotlin/com/strumenta/kolasu/traversing/TraversingStructurallyTest.kt#L188-L196)
- [Pylasu](https://github.com/Strumenta/pylasu/blob/a57368920b0dd14868347690dea86066c1e17727/tests/test_traversing.py#L21-L23)
- [Tylasu](https://github.com/Strumenta/tylasu/blob/29c5dcac2384f03f4911b80d4f310a09a754b0ef/tests/traversing.test.ts#L45C12-L46)

Most other methods are derived from `walk` and may change the order of traversal.

An exception is methods that travel upwards from a node to its ancestors, rather than downwards to its children.
This is the case of the `walkAncestors` method.

## Listeners and Visitors

In StarLasu we do not encourage the usage of visitors or listeners, that are commonly used with ANTLR for example.
These have to be generated and produce interfaces with a number of methods depending on the number of node types, which can grow high.
Moreover, listeners/visitors make it difficult to organize code in a structured manner.

## Finding Nodes of a Given Type

Given an AST there is one essential operation we may want to do: find nodes of a given type. We can search for nodes of a given type in two 
directions: looking among descendants of the current node and look among ancestors.

For example, given a field declaration we may want to know in which class is declared. In that case we will look for the closest ancestor 
of type ClassDeclaration.

On the other hand, we may identify all the return statement inside a MethodDeclaration. In that case we will look for them among the descendants 
of the node.

_See in:_
- [Kolasu](https://github.com/Strumenta/kolasu/tree/master/core/src/main/kotlin/com/strumenta/kolasu/traversing)
- [Tylasu](https://github.com/Strumenta/tylasu/tree/master/src/traversing)

