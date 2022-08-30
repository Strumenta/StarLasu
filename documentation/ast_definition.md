# AST Definition

An Abstract Syntax Tree defined with StarLasu, has these characteristics:
* It has a single root
* Each node has a type
* Each type of node has:
  - a package it belongs to
  - a name
  - a list of properties
* Each node property can represent an attribute, a containment relation, or a reference relation
* Each property has a name and a multiplicity. Multiplicity can be 1, 0..1, 0..many. In case of a reference relation, it can be only 1 or 0..1
* Each node should be part of exactly one containment relation, with the exception of the root node which should not be contained by any other node

Given we support references, the AST could be consider a Graph in reality.

## Attribute values

TBW

## Derived

Some properties could be calculated, i.e., derived from other properties. They are typically not serialized.

## Named and PossiblyNamed

TBW

## Reference by Name

In textual languages we have typically references resolved by name. For this reason in StarLasu we have special support for the type ReferenceByName.
This type has a generic parameter type, which should extend PossiblyNamed. This type indicates the type of thing that can be referred to.

Suppose to have a language with the Node Type ReferenceExpression. The Node Type ReferenceExpression could have an attribute with type ReferenceByNam&lt;VariableDeclaration&gt;, as it permits to refer to Variable Declarations. We would expect VariableDeclaration to extend PossiblyNamed (or Named). 

## Origin

## Destination

Note that we can accept to refer to Node Type which could potentially be anonymous, however we would typically only be able to refer to instances which actually have a name. Imagine a language that permits to define Classes and anonymous Classes. The Node Type ClassDeclaration would be PossiblyNamed, however when using a class in the typical class instantiation we would not be able to refer to anonymous classes but only to classes with a name.

It has two values:
- a name value, of type String
- a referred value

The referred value is typically null initially and it is later set to a proper value during symbol resolution.

## NodeType

TBW

## Link

TBW

