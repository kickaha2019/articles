The images for a webpage are defined in the YAML metadata rather
than in the markdown. This may seem strange but how to layout
the images will vary according to the number of images, what's
on the page, and the screen size available. It's convenient to
let the Ruby code decide on the layout, and define the images outside
the markdown. Defining images inside markdown isn't so pretty,
and less pretty would be making them float to right or left as
far as I know.

So for example the [Florida 2001](2001/Florida) page has metadata including:

~~~
---
title: Florida
date: Sunday, 24 June 2001
images:
- path: contemporary1.JPG
  tag: Inside the Contemporary Resort Disneyworld
- path: contemporary2.JPG
  tag: Inside the Contemporary Resort Disneyworld
- path: epcot.JPG
  tag: EPCOT Disneyworld
~~~

where the paths are relative to the webpage definition, and the tags
are used for alt text, as well as titles when the images are displayed
in large size.

On many pages with images the images are displayed small size inset into the text using [floats](https://www.w3schools.com/css/css_float.asp), and there is a special picture page displaying them in a larger size. Where there are more images than can be inset then using Javascript the inset images are rotated. Did hope to use CSS to achieve this but not easily possible.
