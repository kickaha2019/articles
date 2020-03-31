There were a number of reasons to overhaul the HTML / CSS. One was
to make the webpages respond to different screen sizes - so where
there were grids of pictures as in galleries make the grid only
as wide as the screen. Also make the index of child pages bigger if
possible to avoid wrapping of the links.

Another reason was to make the HTML HTML5 compliant, and to routinely
validate the pages (for the moment using [W3C markup validation](https://validator.w3.org/)).
I make mistakes, and validating as far as possible is nice.

I could have tried using something like [Bootstrap](https://getbootstrap.com)
to make the website responsive. I didn't want that much cleverness. My
website is aimed to be low maintenance and simple. I prefer using as
little technology as possible, using as few features to accomplish
goals. The more features the more complicated a program is to
maintain and understand, and the more vulnerable one is to changes.

I did investigate using [flex layout](http://www.w3.org/TR/2012/CR-css3-flexbox-20120918/).
That's pretty neat, flexible - but not consistently implemented
across browsers. Only more recent versions of Firefox handled wrapping
of inline flex boses which was key to how I wanted to do the
responsiveness.

So instead I fell back onto using DIVs and inline flow layout which
meant DIVs would wrap if there wasn't enough space. Together with CSS
media queries to adjust sizes of the containing DIVs according to
the screen acreage. This seems to work well, and is browser
independent. A little bit finicky setting the margins and widths
but doable.