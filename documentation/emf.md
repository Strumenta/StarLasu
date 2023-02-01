# EMF

The Eclipse Modeling Framework (EMF) has been very successful in the MDE world. It can be regarded as an exchange format supported by different tools.

For this reason we built support for exporting Metamodels and Models to EMF. We in particular support the serialization to EMF-JSON. EMF-JSON is not as 
well-defined and supported as XMI (based on XML), but the request for JSON-based formats on some of the platforms supported brought us to focus on it.

In our case, _metamodels_ are the definition of the node types. For example, they specify which properties each node has. 

Instead, we can represent and serialize ASTs as _models_ (i.e., instances of metamodels). A model describes the value of each node's properties, and the
relationships among the nodes.

In some of the StarLasu libraries, we can also _import_ EMF metamodels and models (generated with other StarLasu libraries) 
in order to _consume_ the results of a tool (e.g. a parser) from a different language. This is what the
[Strumenta Playground](https://playground.strumenta.com/) web app does, for example. This is also useful for [cross-platform parsers](parsers-cross-platform.md).

Read more about this topic in:
- [Kolasu](https://javadoc.io/doc/com.strumenta.kolasu/kolasu-emf/latest/index.html) ([source code](https://github.com/Strumenta/kolasu/tree/master/emf))
- [Pylasu](https://pylasu.readthedocs.io/en/latest/pylasu.emf.html) ([source code](https://github.com/Strumenta/pylasu/tree/master/pylasu/emf)) _note: support in Pylasu is a work in progress._
- [Tylasu](https://strumenta.github.io/tylasu/modules/interop_ecore.html) ([source code](https://github.com/Strumenta/tylasu/blob/master/src/interop/ecore.ts))

