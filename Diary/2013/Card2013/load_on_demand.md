@title		2:Load on demand
@date		16th September 2013
@markdown
One of Armageddon's faults was slow initial loading of the first
screen.  To get to the first screen the browser has to load the
Javascript code which was in one .js file.

An improvement for *Card 2013* is to split up the Javascript
code into separate files, and load the code for a particular
scene on the first time it is needed.  This isn't so required
for *Card 2013* as it is a smaller game, but seemed a
worthwhile change to make.

The loading is done using [Ajax](https://www.w3schools.com/xml/ajax_intro.asp).
It is done synchronously which is not usually recommended, but
in this specific instance made life simpler.
