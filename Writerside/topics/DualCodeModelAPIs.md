# The Dual Code Model APIs

This segment is more theoretical than the others. It is meant to provide a high-level overview of the dual code model APIs and the approach followed in the development of the StarLasu libraries.
It will approach the concepts of homogenous and heterogeneous APIs, and how to use and leveraged them in the StarLasu libraries.

## Homogenous APIs

In kolasu, [Nodes](https://github.com/Strumenta/kolasu/blob/main/core/src/main/kotlin/com/strumenta/kolasu/model/Node.kt) are the basic building blocks of an AST. They are used to represent the different elements of the language being parsed.
All the instances of nodes are the same and have a defined set of properties and methods, such as the origin, parent, etc... 

There are also reflective capabilities: so that its possible to ask each node for its properties and for each property to have access to the name, type and multiplicity, which allows to write fully generic algorithms. 
This is what we call a homogenous API. 

This homogenous APIs are important to develop generic tools, like interpreters or semantic enrichment modules. Using the homogenous API, we can develop a tool that can be used for any language that has an AST representation.
## Heterogeneous APIs

On the other hand, each Node can also have its own specific set of properties and methods. For instance a Node that represents an if statement can have the condition and the body properties.
This is what we call a heterogeneous API.
