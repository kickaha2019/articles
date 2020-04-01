Parameter files (files with the name "parameters.txt") contain settings
which control how the article pages look in the website. The settings in a parameter file
are applied to articles in that directory and below
(unless overriden by a lower-level parameter file.)

An example "parameters.txt":

~~~
ORDER=Name
TITLE=Peter's Pages
TABLE_CLASS=table
URL=http://www.alofmethbin.com/

~~~
The settings in one "parameters.txt" file apply to the current directory
and sub-directories unless overriden by a lower-level "parameters.txt" file.

*INDEX* if set to "image" specifies that images are used
for index entries rather than text.

*INDEX_CHILDREN* if set to "true" specifies that child pages
are indexed.

*ORDER* gives the order that the children are to be displayed in.
Options are *Name* (alphabetical order), *Date* (date order),
and *Person* (surname order.)

*URL* gives the URL for the root page of the website.

*TITLE* gives a default title for the article webpage.

*TRANSPARENCY* gives the path to a transparent image file.

*TABLE_CLASS* controls the CSS classes for the *Table*
declarations.
