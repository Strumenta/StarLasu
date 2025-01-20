# The Chisel Method

The Chisel method allows to build parsers consistently using the same approach which allows to achieve a consistency on the architectural decisions and enables developers to get familiar with a project easily.

This method is called Chisel because building parsers is about getting the information out of the code, as when you use a chisel you "take" the statue out of the marble. Also, since Strumenta means tools in Latin, Chisel takes the place as one of the most important tool in the company's toolset.

The Chisel method is based on the following principles:
1. We define a clear goal, which is shared by the Client and the Language Engineering Team. This goal is objective, and it is not subject to interpretation.
2. At each step, the Language Engineering Team should clearly understand where we are and what should be done next - parsing and then refining the produced AST. Tool support should facilitate each single step, removing friction due to repetitive tasks. For this the StarLasu Libraries can be used since it provides user-friendly APIs for seamless integration as well as cross-language integration.
3. Ensure frictionless adoption by providing all support needed to facilitate the adoption of the parser inside a Language Engineering Pipeline. By automatically generating documentation and having a method that simplifies training processes.
![image.png](chiselMethod.png)

The Chisel method is based on the following steps:

1. Create a parser using the StarLasu Libraries and Starlasu Tools, for that you need to:

  - Define a grammar;
  - Use the starlasu libraries to generate the AST;
  - Refine the AST;
  - Have a testing strategy;
  - Have a set of examples that can be used to measure the parser's progress;
2. Write a semantics module for more advanced codebase analysis and symbol resolution (optional).
3. Write a code generation module this if the final goal is to generate the code for a target language (optional).

Chisel is a method and a transformative approach to parsers development, ensuring efficiency, adaptability, and sustainability. 
