The game is defined in a set of text files which are compiled into
Javascript.  The text files give the content of
the scenes of the game.  An example:

~~~
false
false
false
false
false
false
false
false
false
false
false
false
false
false
false
false
~~~
The above example defines the first screen of the game.  The above is
actually *Ruby* code, *VIEW* and *BOW* and the other nmes are
Ruby methods.  The Ruby data structures are compiled into
Javascript which at runtime will add appropriate HTML elements to the
DOM for the game.

The visual elements can be defined as layers in a PSD Photoshop
file.  The compilation process splits up the PSD file into JPGs
and PNGs for the web.  This feels like a cheap way of laying
out scenes to me, to do it inside Photoshop Elements.
