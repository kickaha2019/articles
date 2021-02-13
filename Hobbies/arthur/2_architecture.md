#title 2: Architecture
#markdown
A *machine* class represents an entity which is capable of
returning values for each *cell* on the board for a
particular Go position. The move chosen is the one with
the highest cell value. In passing the values are actually
a pair of non-negative real numbers, one for each player.
I felt this worked better than trying to have a single real
number.

Each *machine* is a tree (directed graph) of *components*.
Each *component* can have child *components* it calls to
get values for either the
cells on the board or the edges between cells. The component will
then generate output values itself based on its inputs and
the board.

The components may be as simple as an *Add* which adds its
inputs, to a *Conductor* which conducts the values of
one child according to the resistances from a second child.

The components can be integer or real valued. The integer
components only take other integer components as inputs.

This architecture is inspired to some extent by a Moog
synthesizer.
