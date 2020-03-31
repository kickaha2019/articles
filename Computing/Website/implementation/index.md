Each of the pages in my website under the "Articles" folder is
generated from a text file in a source directory structure
which mirrors the structure in the website itself.  After
editing the article source text files I run a Ruby script
which converts the source text files into a corresponding
directory structure of HTML files.  This directory structure
is generated into a local copy of the website on my computer.

The source directory structure includes various kinds of files.

The article files are text files with a filename ending in
".txt".  They are converted to a HTML page matching the
filename.

The resources top-level directory contains images and CSS files used
by the templates.

The templates top-level directory contains tempate files for parts of
the generated web pages.

The code for the website generation is in a
[Github repository](https://github.com/kickaha2019/website).

# Handling images
The *Image* declaration add images to the article page.
The images can either be files inside the directory for the
target website, or files relative to the file for the article page.

The image will be scaled (at different resolutions) for display
on the web.

If the image is an inset then it will
generated inside a link which can be clicked to display the full
image.

# End of lines
Rather like *Text Encodings* the end of lines
can be represented differently in text files from different
sources.

So one source may use "\n", another "\r", and yet
another "\r\n", and others a mixture of all of those.

The Ruby code which reads the source files for the articles
explicitly looks for "\r" characters in the source lines
got by *IO.readlines()*.

# Text encodings
The text for my website comes from a number of sources.
Some of it I enter in text editors, some of it is pasted
from other programs like *iWeb*.  As such the text can
contain special characters in a variety of text encodings.

The downside of this, unless I took corrective action,
would be funny looking characters where a " or ' should
appear on a webpage.  Only ASCII standard characters are
safe to appear on a webpage, anything else you need to use
HTML entity codes.  Such as &amp;pound; for &pound; for example.

The Ruby code which compiles the website source checks
that the source files are just ASCII and moans if there's
strange characters in there.

A final check is made that the generated HTML only contains
ASCII characters.
