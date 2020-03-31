The *machines* are evolved in an involved stack of processes.
At the top-level an *evolution* consists of one or more *generations*.
Each *generation* starts with either the base machine (first
generation), or the best machine from the last generation.

Each *generation* consists of a number of *optimisations*,
where each *optimisation* applies a *mutation* to the starting
machine for the *generation*, then runs a number of
*annealings* against that mutated machine to optimise it.

The mutations modify the tree of *components* in a machine
by inserting new components into it.

The *annealings* focus on choosing better values for a set of
real numbers which control the evaluations of the machine. The
techniques of choosing better values are (currently)
*excitation* and *relaxation*.

*Excitation* tries to randomly vary the current values, by
an amplitude which decreases as the optimisation proceeds.

*Relaxation* seeks to slightly modify the current values
by changes which will not make anything worse.
