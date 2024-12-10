# Position

Each Node can have an associated position. It indicates a in textual files

A Position has a start and an end Point. Each position is relative to a certain Source, which is optional.

A Point has a Line and a Column (both integer values). The first line of a file is Line 1. 
The first Column of each line is 0. The starting point of file has therefore Line=1 and Column=0.
