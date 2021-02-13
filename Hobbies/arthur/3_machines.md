@title		3: Components
@markdown
Machine classes besides wrapping a tree of *components* also implement logic
for training the tree of components to return desirable evaluations.

The following *machine* classes are currently implemented:

Machine|Description
-|-
Control|Return two values for each cell reflecting how much current player and opponent control that cell. If one player's value exceeds the other's by 0.5 then that player is deemed to control the cell.
Mover|Return two values for each cell reflecting worth of playing in that cell for each player.
Player|Return two values for each cell for current player and opponent. The gain of playing a move at that cell for the current player is their value minus the opponent's value.
