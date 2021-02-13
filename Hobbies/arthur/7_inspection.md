#title 7: Debugging points in the code
#markdown
Debugging the code is a challenge. To help there are a number of inspection points
in the code which can be turned on by parameters when running evolutions.
These inspection points if turned on may just log to a file, or generate
reports or charts.

Class|Inspection point|Description
-|-|-
Component|bind|Evaluation
Component|cache|Caching
Component|grow|Growing
Evolution|anneal|Annealing
Evolution|annealDump|Annealing
Evolution|excite_max|Excitation maximum value
Evolution|fire_dump|Test firing
Evolution|generate|Generation
Evolution|grow|Growing
Evolution|optimise|Optimisation
Evolution|relax_max|Relaxation maximum value
Evolution|score|Scoring
Machine|cache|Caching
Machine|mutate|Mutation
Machine|score|Scoring
Mutations|mutate|Mutation
Performance|performance|Performance testbed
Positions|context|Dumping context for an evaluation
Positions|score|Scoring
ReadAhead|pulse|Internal logic
ReadAhead|trace|Internal logic
ReadAhead|tree|Internal logic
Spider|bind|Internal operations of the Spider board evaluation
Value|radiate|Radiation
ValueSet|score|Scoring
ValueSetCollection|commitBest|Committing a relaxation
ValueSetCollection|deleteLosers|Deleting failed value sets
ValueSetCollection|excite|Excitation
ValueSetCollection|exciteSpectra|Dump information about values in excitation
ValueSetCollection|relax|Relaxation
ValueSetCollection|select|Choosing value sets for relaxation
