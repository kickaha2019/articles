---
title: Development diary
---
# 23rd September 2018
Started down the slippery and prolonged slope of doing a CYOA game
where the player chooses the order to experience the episodes in.

# 7th October 2018
Decided on the plot and an alliterative title. Collecting ideas for
the locations.

# 18th October 2018
Began defining the locations in a structured way suitable for a
compilation process.

# 2nd November 2018
Started work on a Ruby parser for the game definition files.

# 6th November 2018
Commencing implementing a trace utility to find paths through the
game which will visit each world before reaching the finish world.

# 17th November 2018
Invested in [RubyMine](https://www.jetbrains.com/ruby/) and got the trace utility finding solutions
to the game. Next up is to write a crude player which allows one to
play through the game in a terminal session.

# 30th November 2018
Have been fleshing out the text for the game. Decided "Mug. Missing."
is a better title than "Coffee Cup Chase" because it's a mug not a cup which
is missing. Am going to try writing script to colour the nodes of the
game as an alternative to finding paths through. If one can colour the
nodes so that you know from any node going to a node of the next colour
will give you a solution that's easier to implement.

# 13th December 2018
Have now got a colouration of the worlds into 4s. The workflow is now
attempt to colour the worlds to get a solution, then comment out
choices and results so only the jumps between worlds in the solution
remain. Will write a utility to validate the edited worlds.

# 27th December 2018
Filling out the descriptions and dialogue. Have decided to write some
tests for the validation, to check the validation will find possible
dead ends in the 'game'.

# 22nd January 2019
Have done a first pass at the text for the game. Will now experiment
with [Tweego](https://www.motoslave.net/tweego/) for the toolchain to generate HTML for the game.

# 25th January 2019
Tweego generates a HTML file for the game. This has to be opened from
a web server, not off the file system due to security features in
modern browsers. On my iMac that means running Apache (*sudo apachectl start*),
and putting the HTML file either in */Library/WebServer/Documents* or
somewhere linked to from that directory.

# 6th February 2019
I've learnt with some embarrassment that Tweego doesn't parse its input files
for syntax mistakes in the Sugarcube macroes I'm using, and also
that it preserves white space in the macro statements. Whoops.

# 12th April 2019
Added images to each page. Correcting flaws in the compiling of the DSL
to Twee code. Added a way to debug the code by at the top of each page printing
out values of internal Javascript variables.

# 21st April 2019
More fixes to the DSL compiling. Have sent a link to the game to a few
people for feedback.

# 25th April 2019
Adding more choices and text so some scenes don't feel so bare, particularly
towards the end of the game.

# 17th May 2019
Used CSS to modify the look and feel based on the helpful
[Twine guide](http://www.adamhammond.com/twineguide/) by Adam Hammond.

# 20th May 2019
Uploaded the game to [itch.io](https://lailoken.itch.io/mug-missing)
for general distribution.
