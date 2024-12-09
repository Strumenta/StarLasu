
# The Starlasu Method

The Starlasu method provides a flexible, systematic, and extensible framework for creating tools like parsers, 
transpilers, code analyzers, interpreters, code generators, and domain-specific languages (DSLs). 

The Starlasu method was developed at [Strumenta](https://strumenta.com), drawing on a decade of experience in Language 
Engineering projects. 
It reflects lessons learned about what works and what doesn’t, 
combining this expertise to deliver reliable and adaptable language processing systems.

## What can you do with it?

The goal is to be able to define arbitrary Language Engineering applications, and flexibility is the main goal
of this approach.

Concretely, the most common applications we write using these methods are:
1. **Domain-Specific Languages (DSLs)**: We define new tailored languages for specific domains with accompanying editors and execution engines (either interpreters or code generators).
2. **Transpilers**: Applications that translate code from one language to another. Typically from a legacy language such as RPG to a modern one such as Java.
3. **Parsers**: Tools that generate Code Models for code analysis, documentation generation, or as the initial step of 
transpilers. We typically implements these Parsers that are then used to build code analysis tools, transpilers, or other systems. 

## Overview

The Starlasu method is centered around the idea of **Code Model**. 
We have this component at the center and a constellation of other components interacting with it.

![Overview of the Starlasu Approach](../images/StarlasuOverview.png)

### The Code Model
The **Code Model** represents a representation of the information present in the code, in a form that facilitates
reasoning about it and processing. It facilitates reasoning by being close to the mental model a developer would 
have of the code and it facilitate processing through the [dualistic homogeneous and heterogeneous APIs](DualCodeModelAPIs.md).

The Code Model is an evolution of the Abstract Syntax Tree (AST).

### Surrounding Components
Around this central model, there are several essential components:
- **Parsers**: These components process code, and "understand it". This understanding is defined as the Code Model.
- **Code Generators**: These components produce code according to a Code Model.
- **Code Model Transformations**: These components produce a different Code Model, from an original Code Model.
- **Editors**: These components permit to edit code, either through textual, graphical, or projectional editors. 
They provide Language Intelligence by using the underlying Code Model
- **Semantic Enrichment**: These components analyze a Code Model performing symbol resolution and type calculation over it,
 and adding additional metadata to the original Code Model. 
- **Interpreters**: They permit the execution of Code Models

These components work in a star-like configuration around the AST, emphasizing modularity

## What one gets from Starlasu?

Starlasu consists of a mental framework and guidelines to build the different component. For example, we have a detailed
method to design and implement parsers (see [The Chisel Method](ChiselMethod.md)).

One also gets a family of libraries, all built around the same principles but for different programming languages. In this
way one can conveniently use the Starlasu when programming in a multitude of programming languages.

Starlasu is supported by a family of libraries, each optimized for different platforms:
- **Kolasu**: For the JVM (Java, Kotlin), expanding to Node.js and browser environments in version 1.6.
- **Tylasu**: For Node.js and browser environments.
- **Pylasu**: For Python.
- **Sharplasu**: For .NET.

## Why the name Starlasu?

Starlasu combines the concept of a star and the shortand for language support. Why a star? To indicate the fact that we 
have at the center one element (the code model), and everything else operates on it either producing code models, 
refining code models or consuming code model.


## Origin of the Starlasu Method
The Starlasu method originated from Strumenta’s commitment to simplifying and standardizing language engineering.
In other words, we were not particularly keen reinventing the wheel and doing the same mistakes over and over, so we 
wanted to capture what we learned in one-hundred or so language engineering projects to overcome the typical pitfalls,
get a design that was extensible, and that permitted to get where we want as fast and uneventfully as possible.

To achieve that we distilled common patterns into reusable principles and libraries. These ideas have been influenced 
by the background of each of us, and draw on experience from the Eclipse Modeling Framework community, 
Model Driven Engineering, Projectional Editing and the work of giants in the community such as Markus Völter, Meinte Boersma,
Jos Warmer, Sascha Lißon and others.




These libraries share a common architecture, enabling cross-platform development and consistent tooling.

## Educational Material
Strumenta provides extensive educational resources to help developers adopt and apply the Starlasu method. These include tutorials, case studies, and hands-on workshops.

## Applications
With the Starlasu method, you can build:
1. **Domain-Specific Languages (DSLs)**
2. **Transpilers**
3. **Parsers**

## Technical Considerations
Starlasu emphasizes modularity, scalability, and reusability. Its libraries are designed for interoperability, ensuring seamless integration across platforms.

## Feature Matrix
Below is a detailed matrix of the features provided by the Starlasu libraries:

| Feature                    | Kolasu                   | Tylasu                   | Pylasu                   | Sharplasu                |
|----------------------------|--------------------------|--------------------------|--------------------------|--------------------------|
| AST Representation         | Stable and widely used   | Stable and widely used   | Stable and widely used   | Stable and widely used   |
| Symbol Resolution          | Stable and reliable      | Stable and reliable      | Stable and reliable      | Stable and reliable      |
| Type Calculation           | In advanced development  | In advanced development  | In advanced development  | In advanced development  |
| Code Generation            | Mature with enhancements | Mature with enhancements | Mature with enhancements | Mature with enhancements |
| Parser Integration         | Mature and extensible    | Mature and extensible    | Mature and extensible    | Mature and extensible    |
| Editor Support             | Stable and in use        | Stable and in use        | Stable and in use        | Stable and in use        |
| Interoperability           | Partially mature         | Partially mature         | Partially mature         | Partially mature         |
| AST Traversal and Querying | Stable and reliable      | Stable and reliable      | Stable and reliable      | Stable and reliable      |
| Static Analysis            | In development           | In development           | In development           | In development           |
| Transformation Framework   | Stable and extensible    | Stable and extensible    | Stable and extensible    | Stable and extensible    |
| Integration with IDEs      | Experimental             | Experimental             | Experimental             | Experimental             |
| Interpreters               | Mature and performant    | Mature and performant    | Mature and performant    | Mature and performant    |
| Documentation Generation   | Mature and extensible    | Mature and extensible    | Mature and extensible    | Mature and extensible    |
| Code Refactoring Support   | In development           | In development           | In development           | In development           |
| Cross-Language Transpilers | Mature with enhancements | Mature with enhancements | Mature with enhancements | Mature with enhancements |
| Multi-Language Support     | Stable and improving     | Stable and improving     | Stable and improving     | Stable and improving     |

---

For more information, visit [Strumenta’s Website](https://strumenta.com).

MENTION CHISEL AND SPECIFIC METHODS FOR PARSERS, DSLS, TRANSPILERS