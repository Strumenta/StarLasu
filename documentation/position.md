# Position

To indicate positions in textual files we use the class `Position`.

A Position has a `start` and an `end` `Point`. Each position is relative to a certain `Source`, which is optional.

A Point has a Line and a Column (both Int). The first line of a file is Line 1. The first Column of each line is 0.
The starting point of file has therefore Line=1 and Column=0.

Important Source sub-classes are:
* StringSource: represent an in-memory String
* FileSource: associated to a File
* URLSource: associated to an URL

_See in [Kolasu](https://github.com/Strumenta/kolasu/blob/master/core/src/main/kotlin/com/strumenta/kolasu/model/Position.kt)_
