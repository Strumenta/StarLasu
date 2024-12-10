# Validation

We have a concept of `Issue`. Each issue has a message, a position, a IssueSeverity, and an IssueType.

The `IssueType` can be lexical, syntactic, semantic, or translation.
The `IssueSeverity` can be info, warning, or error.

Results are objects that provide a value and a collection of issues.

_See in [Kolasu](https://github.com/Strumenta/kolasu/tree/master/core/src/main/kotlin/com/strumenta/kolasu/validation)_.