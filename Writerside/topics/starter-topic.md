
# The Starlasu Method

The Starlasu method provides a flexible, systematic, and extensible framework for creating tools like parsers, 
transpilers, code analyzers, interpreters, code generators, and domain-specific languages (DSLs). 

The Starlasu method was developed at [Strumenta](https://strumenta.com), drawing on a decade of experience in Language 
Engineering projects. 
It reflects lessons learned about what works and what doesn’t, 
combining this expertise to deliver reliable and adaptable language processing systems.

## Overview

The Starlasu method is centered around the idea of **Code Model**. 
We have this component at the center and a constellation of other components interacting with it.

### The Code Model
The **Code Model** represents a representation of the information present in the code, in a form that facilitates
reasoning about it and processing. It facilitates reasoning by being close to the mental model a developer would 
have of the code and it facilitate processing through the dualistic homogeneous and heterogeneous APIs. TODO LINKS.

The Code Model is an evolution of the Abstract Syntax Tree (AST).

### Surrounding Components
Around this central model, there are several essential components:
- **Parsers**: Convert code into the AST.
- **Code Generators**: Produce code from the AST.
- **Editors**: Offer a user interface for working with the AST.
- **Symbol Resolution**: Connects usages of variables and functions to their definitions.
- **Type Calculation**: Annotates the AST with type-related information.

These components work in a star-like configuration around the AST, emphasizing modularity and scalability.

## Why the name Starlasu?

Starlasu combines the concept of a star and the shortand for language support. Why a star? To indicate the fact that we 
have at the center one element (the code model), and everything else operates on it either producing code models, 
refining code models or consuming code model.


## Origin of the Starlasu Method
The Starlasu method originated from Strumenta’s commitment to simplifying and standardizing language engineering. Drawing on experience with diverse projects, we distilled common patterns into reusable principles and libraries.

## Validation of the Starlasu Method
The method has been validated through extensive real-world applications, including:
1. **Designing Domain-Specific Languages (DSLs)**: Tailored languages for specific domains with accompanying editors and execution engines.
2. **Building Transpilers**: Applications that translate code from one language to another.
3. **Creating Parsers**: Tools that generate ASTs for code analysis, documentation generation, or as the initial step of transpilers.

## Libraries Supporting the Starlasu Method
Starlasu is supported by a family of libraries, each optimized for different platforms:
- **Kolasu**: For the JVM (Java, Kotlin), expanding to Node.js and browser environments in version 1.6.
- **Tylasu**: For Node.js and browser environments.
- **Pylasu**: For Python.
- **Sharplasu**: For .NET.

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
