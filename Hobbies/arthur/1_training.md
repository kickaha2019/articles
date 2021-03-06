@title		1: Teaching
@markdown
My Go program relies on machine learning to improve itself. An empirical approach
would be to have a population of versions of a Go program, let the versions compete against
each other, and choose the best versions to 'breed' and improve the population. Perhaps
use genetic algorithms to exchange 'material' between the versions.

The advantage of this approach is that it is empirical, one doesn't need to collect
training positions. The disadvantage is how long it would take even if the versions
compete on smaller size boards to some extent. Unless the population is large there's
a likelihood of inbreeding, the versions would only know how to play against the
way they play. So I didn't go down this route.

Instead my Go program is taught much like a human player is taught, against sample
problems and from collections of games. I have been typing in problems from books
I own - though my books tend to be old and what's considered good changes. I also
rely on game collections like *GoGoD'.

There are challenges in using human Go games as they stand for teaching, one is the games will
contain mistakes. I'm hoping that the good moves will outweight the bad moves, but
also that reading ahead will also compensate for any bad moves considered in
particular positions.
