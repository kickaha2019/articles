@title		History of Journeys development
@markdown
As a result of comments by kind people who checked out my
game I made some changes.  Other people who come to a game fresh
notice things one misses, or challenge the assumptions one has
been making during development.

So I split the front menu into two, a top-level menu and then a
menu when inside the game itself.  I had feedback that after
choosing a hardness on the 'New Game' screen it seemed like
one had been thrown out rather than visibly starting the game.

I also revised the way the tours worked so one clicks forwards
and backwards through the images, rather than the game itself
cycles through the images.  Simpler and more intuitive.

Some comments I haven't actioned, but see the wisdom in.  A
New Game option where you don't see cryptic computer keys in
Korean but as numbers and signs would have been interesting.

The game is very slow to load initially - partly this is due to
the Javascript code which totalled over 2 megabytes!  Loading times
were so slow that the brave people who tried to play thought
the game was broken.

I cut the Javascript code
down to 1 megabyte by not including debug information but even so
it's still slow.  One approach is to load the Javascript on
demand for each scene using AJAX - doable but will take time.

A lot of images are being loaded when the game starts as well.
The trouble is particularly with the inset images which randomly
change on the front screen - there's 22 images which all need to
be loaded.  These insets need specialised handling instead of
using generic code.

Some players gave up as the way the computer worked didn't make
sense to them.  It's a lot of work for me to change the computer
from being a stack-based machine, so this will be another
learning exercise of making the way puzzles work more
open and overt to the poor player.  I did replace the Korean
and other characters by less cryptic ones for the computer
keys as encouragement for people to continue.

A bug I fixed which I only came across randomly was handling
the situation where the game is being displayed in multiple windows
or tabs in the same browser.  As it uses local storage both
instances of the game are using and changing the same data.
Web browsers are more compatible than in the days when Microsoft
chose not to support transparent PNGs in a standard fashion.  However
there are still issues.

I recently fell over that Internet Explorer does not support
*IndexOf* for array lookups.  A workaround is to use a
[JQuery](http://jquery.com) *inArray* method.

Another issue was I wasn't always putting values for 'top' and 'left'
for some of the IMGs and DIVs.  On Safari at least it defaulted to
'0' which was what I expected.  But I should have put explicit values
and on some versions of Internet Explorer not doing so caused the
elements to be displaced.

Up to now the game has been defined in XML files translated into
Javascript by Java code.  Have embarked on a rewrite for a number
of reasons to move the XML files to be Ruby code instead.

The strategy is that the Ruby source files construct data
structures corresponding to the different scenes in the game.
These Ruby data structures are then used to generate Javascript
to run the actual game.

The XML was a bit clumsy when I wanted to define macro
structures.  Ruby is a lot more powerful, and I can leverage
Ruby itself to parse the source files rather than manually
parsing XML in Java.

During the slideshow the browser would display an incomplete image
while the image was being loaded.  To solve this I added callbacks for
the image loads, and only made the new screen visible when all the
images had loaded.

There is a challenge here with some browsers not always firing the
image load event.  Google to find more.  I adopted the procedure of
setting the load callback then setting the src on the ing element.
Code:

~~~
      this.element = document.createElement( "img");
z_frozen += 1;
$(this.element).load( z_warm);
      this.element.setAttribute( "src", this.filename);

~~~
*z_frozen* is a count of events we're waiting for before the page
can be displayed.  *z_warm* is the callback for one event.
*$* is for [JQuery](http://api.jquery.com)
which my code uses for browser independence.

Making this change I managed to break different quotes being
displayed as the player progressed - I failed to run the set of
tests before I deployed the game to the web!

Have a problem where sometimes moving between scenes results in
what should be transparent (images and div backgrounds) being opaque
on Safari and Chrome.  But not on Firefox.  Spent a lot of time
varying the code without finding a true workaround.

Finally to fix this replaced the use of a mapped image with areas
by Javascript called on mouse move events.  Am worried how fast
this is going to be but it seems to have stopped the problem.
And also got rid of a lot of complicated code which was
polygonising outlines.
