# AST Definition

An Abstract Syntax Tree (AST) defined with StarLasu, has these characteristics:
* It has a single root
* Each node has a type
* Each node has a parent, with the exception of root node
* Each type of node has:
  - a package it belongs to
  - a name
  - a list of properties
* Each node property can represent an attribute, a containment relation, or a reference relation
* Each property has a name and a multiplicity. Multiplicity can be 1, 0..1, 0..* . Every kind of property can have all these kinds of multiplicity (i.e., we can have references with multiple values)
* Each node should be part of exactly one containment relation, with the exception of the root node which should not be contained by any other node
* A Reference Relation can have an associated name or not

Given we support references, the AST could be consider a Graph in reality.

Let's suppose to have a Node representing a Java method declaration.
It may have the following properties:
- A name attribute, of type String, with multiplicity 1..1
- A reference to a method that it overrides, without associated name, and with a multiplicity 0..1
- A containment relation with the parameters, with multiplicity 0..*
- A containment relation to an optional body, with multiplicity 0..1

## Attribute values

Attribute values can have one of these types:
- String
- Character
- Boolean
- Integer
- Long
- Float
- Double
- BigInteger
- BigDecimal
- LocalDate
- LocalTime
- LocalDateTime
- A kind of Enum

An Enum has a list of possible values, each one with a name.

## Derived

Some properties could be calculated, i.e., derived from other properties. They are typically not serialized. They cannot represent containment by only
references. 

## Reference by Name

In textual languages we have typically references resolved by name (see [Naming](https://github.com/Strumenta/StarLasu/blob/main/documentation/naming.md)). For this reason in StarLasu we have special support for the type ReferenceByName.
This type has a generic parameter type, which should extend PossiblyNamed. This type indicates the type of thing that can be referred to.

Suppose to have a language with the Node Type ReferenceExpression. The Node Type ReferenceExpression could have an attribute with type ReferenceByNam&lt;VariableDeclaration&gt;, as it permits to refer to Variable Declarations. We would expect VariableDeclaration to extend PossiblyNamed (or Named). 

Note that we can accept to refer to Node Type which could potentially be anonymous, however we would typically only be able to refer to instances which actually have a name. Imagine a language that permits to define Classes and anonymous Classes. The Node Type ClassDeclaration would be PossiblyNamed, however when using a class in the typical class instantiation we would not be able to refer to anonymous classes but only to classes with a name.

It has two values:
- a name value, of type String
- a referred value

The referred value is typically null initially and it is later set to a proper value during symbol resolution.

## Error nodes

Special AST nodes can be used to represent errors.

All nodes representing errors should implement the same interface called `ErrorNode`. 

## Notes on Kolasu implementation

### Link

When a reference has no associated string, the property is marked as _Link_.

For example:
```
class MethodDeclaration {
  @Link val overriddenMethod: MethodDeclaration?
}

```

### NodeType

The interface `NodeType` can be used to specify that a certain Class represent a Node. This is inteded to be used on abstract classes that do not directly extend Node or interfaces. All concrete classes deriving from them should also extend Node, indirectly.

For example, if we define:

```
@NodeType
interface Declaration
```

and later we have a Node using it:

```
class CompilationUnit {
  val elements: List<Declaration> // we know this is a containment, because elements are expected to be Nodes
}
```

We could then have different classes implementing Declaration:

```
sealed class Statement: Node

class VarDeclaration : Statement, Declaration // VarDeclaration indirectly extend Node
```
