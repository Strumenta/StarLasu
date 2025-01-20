# Validation

We have a concept of `Issue`. Each issue has a message, a position, a IssueSeverity, and an IssueType.

The `IssueType` can be lexical, syntactic, semantic, or translation.
The `IssueSeverity` can be info, warning, or error.

A `Result` is an object that has a root and a list of issues, with methods that allow to retrieve issues of a specific type or severity and check if there are no issues

_See in [Kolasu Issue](https://github.com/Strumenta/kolasu/blob/main/ast/src/commonMain/kotlin/com/strumenta/kolasu/validation/Validation.kt)_ _and [Kolasu Result](https://github.com/Strumenta/kolasu/blob/main/ast/src/commonMain/kotlin/com/strumenta/kolasu/validation/Result.kt)_.
