# Symbol Resolution

The objective of symbol resolution consists in linking name-based textual references to the corresponding node entity in the Abstract Syntax Tree (AST). StarLasu provides support for implementing such process with the following building blocks:

* `PossiblyNamed` and `Named` interfaces can be implemented for nodes that can be referenced - see [Naming](https://github.com/Strumenta/StarLasu/blob/main/documentation/naming.md);
* `ReferenceByName` properties can be defined in nodes to represent links to other nodes;
* `SymbolResolver` instances can be configured to specify symbol resolution logic for each property or node type;
* `Scope` instances are used to resolve each reference in the AST;

## Representing references among nodes

References between nodes are implemented using `ReferenceByName` instances in StarLasu. These keep track of the relationship between a `name` and the `referred` node, which might be absent until the symbol resolution phase and must be a sub-type of `PossiblyNamed`. 

In [Kolasu](https://github.com/Strumenta/kolasu), for example, we can define a node `Person` containing a reference `friend` towards another `Person` as follows:
```kotlin
data class Person(
    override val name: String,
    val friend: ReferenceByName<Person> // <-- reference to another `Person`
) : PossiblyNamed
```
Instances can then be created providing the `name` of the referred `Person` instance. As regards the actual referenced object, it might be provided as `initialReferred` value if known or left unresolved until symbol resolution.
```kotlin
// reference by name using `name` only
val first: Person = Person(friend = ReferenceByName("second"))
// reference by name using `initialReferred` value and `name`
val second: Person = Person(friend = ReferenceByName("first", first))
```
In general, references can be resolved using one or more candidates, as follows
```kotlin
second.tryToResolve(first) // <-- `first` is the only candidate
second.tryToResolve(listOf(first, second, others)) // <-- list of candidates
```
While it is possible to manually implement symbol resolution by traversing the AST and updating the `referred` value for each `ReferenceByName` property, StarLasu provides support for the declarative specification of symbol resolution rules, as shown in the next section.

## Declarative symbol resolution

As mentioned in the previous section, it is surely possible to manually implement symbol resolution as some kind of tree-traversal algorithm. However, StarLasu provides support to ease such task and allows the developer to focus on language-specific concerns by providing rules for each reference in a given AST.

Symbol resolution rule specifications consist of three parts:
- __guard__ - the reference property or type for which we want to provide a scope;
- __context__ - the node from which we want to compute the scope;
- __body__ - the actual scope definition, i.e. `Scope` instance;

Each rule produces a `Scope` instance that is used to resolve a given property or all properties of a given type. Given a property, StarLasu adopts a precise rule resolution schema. Considering `Person::friend`, for example, the following steps will be performed: 

1) lookup for a property-based rule having `Person::friend` as guard and `Person` as context;  
2) lookup for a property-based rule having `Person::friend` as guard and any ancestor of the `Person` node as context;
3) lookup for a type-based rule having `Person` as guard and `Person` as context;
4) lookup for a type-based rule having `Person` as guard and any ancestor of the `Person` node as context;

As soon as one rule is found, the symbol resolver will use it to resolve the reference.

In our example, we could define that `friend` reference candidates should correspond to aggregating all `Person` instances of the AST as follows:
```kotlin
val symbolResolver = symbolResolver {
    // property-based rule for Person::friend property
    scopeFor(Person::friend) { context: CompilationUnit ->
        Scope().apply {
            context.walk().filterIsInstance<Person>().forEach { define(it) }
        }
    }
    // type-based rule for references to Person instances
    scopeFor(Person::class) { context: CompilationUnit -> 
        Scope().apply {
            context.walk().filterIsInstance<Person>().forEach { define(it) }
        }
    }
}
```
In the example, `CompilationUnit` represent a container node in the AST. The type-based rule will never be executed as the property-based rule will be found before following the above mentioned resolution schema. Analogously, a property-based rule with `Person` as context would be executed in place of the first rule in our example.
