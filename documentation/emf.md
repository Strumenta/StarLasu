# EMF

The Eclipse Modeling Framework (EMF) has been very successful in the MDE world. It can be regarded as an exchange format supported by different tools.

For this reason we built support for exporting Metamodels and Models to EMF. We in particular support the serialization to EMF-JSON. EMF-JSON is not as 
well defined and supported as XMI (based on XML), but the request for JSON-based formats on some of the platforms supported brought us to focus on it.

In our case, metamodels are the definition of the node types. For example, specify which properties each node has. 

Models are instead ASTs.

_See in [Kolasu](https://github.com/Strumenta/kolasu/tree/master/emf)_.

