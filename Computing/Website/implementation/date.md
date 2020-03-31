The "Date" declaration can be used to give a date for an article.  If an article
has a date this is displayed just under the name of the article at the top of
the RHS on the article page.  It will also be used to decide which articles
get listed in the RSS feed when I get around to writing that.

The parsing of the "Date" declaration is pretty simplistic. Any number between 1 and
31 is taken as the day number, any number greater than 1900 is taken as the year,
and the month is derived by finding a word starting with a 3-letter month.

So some valid "Date" declarations are:

~~~
false
false
false
false
false
false
false
false
~~~