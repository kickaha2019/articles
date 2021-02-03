---
title: '6: Evolution parameters'
---
These parameters can be set in a property file the Evolution program
reads in at startup.

Parameter|Description
-|-
annealings|Number of annealings for each optimisation
base|"cells" if the evolution is for a cell-valued machine, otherwise "edges"
debug_position|Test positions matching this will be logged
excite_reduce|Excitation parameter
excite_strategy|Name of strategy for excitation
excite_tries|Excitation loops
generations|Number of generations
initial_database_size|Initial 'size' for components based on a database
log.*|Control of logging
machine|Class in com.alofmethbin.go.machines for the machine to evolve
max_size|Maximum 'size' of machine to evolve
optimisations|Number of optimisations for each generation
positions|Directory containing test positions
sample_annealings|Number of annealings for each optimisation when sampling
sample_generations|Number of generations when sampling
sample_initial_database_size|Initial 'size' for components based on a database when sampling
sample_max_size|Maximum 'size' of machine to evolve when sampling
sample_optimisations|Number of optimisations for each generation when sampling
sample_select|Number of test positions to use when sampling
