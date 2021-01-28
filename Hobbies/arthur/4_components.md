The following *component* classes are currently
implemented:

Component|Type|Description
-|-|-
Add|Real|Adds two inputs together
Arithmetic|Real|Combines edge values to give a cell value
Base|Integer|Returns edge values based on the board position
Bishop|Real|Radiates edge values diagonally controlled by resistance values for those edges
Cartesian|Integer|Does a 'cartesian product' of two inputs
Conductor|Real|Conducts cell values based on resistance values for the edges
Fork|Both|Returns edge values based on cell values
Homogeneity|Real|Returns edge values flagging if cells in same group
Hydra|Integer|Irregular pattern matcher
Liberty|Real|Sums values for all neighbours of 'connected' group
Location|Integer|Returns cell values based only on location on the board
Multiply|Real|Multiples two inputs
Octopus|Real|Like conductor but kind of radiates the values
Quincunx|Integer|Combines edge values to give a cell value
Readahead|Real|Read ahead component
Reciprocal|Real|Inverts each input value
Rook|Real|Radiates edge values horizontally or vertically controlled by resistance values for those edges
Simultaneity|Real|One edge-valued input is used to assign cells on the board into different groups, cell values for each group are summed then distributed
Spider|Integer|Return edge values based on the patterns of stones on the board - I was reading Tim Powers' "The Medusa Web" about this time
Switch|Real|For each value chooses one of two input values based on a third input value
ToReal|Real|Maps integer input values to real values
Topology|Real|Like Simultaneity but has an idea of groups touching groups
Tracker|Integer|Returns flags for cells affected by last move
