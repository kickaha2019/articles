Most of the text on an article page will be in a "Text"
declaration.  The contents of a "Text" declaration are
unformatted apart from blank lines will cause gaps in the
article webpage itself.  So for example:

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
~~~
Comes out as:

~~~
false
false
false
false
~~~
Words can be bolded by surrounding them with pairs of
apostrophes.  So:

~~~
false
true
~~~
appears as "Normal text.  *Bold text.*"

"Text" declarations can contain links.  These are text elements
delimited by square brackets.  The first kind of link is an explicit
HTTP reference.  So example:

~~~
false
false
~~~
Comes out as:

[Apple](https://www.apple.com/) is a link to Apple's website.

The next kind of link is a link to another file in the website
the articles are being generated into.  So for example:

~~~
false
false
~~~
Comes out as:

[index.html](/Users/peter/Sites/index.html) is a link to the website home page.

The link can be relative.  So:

~~~
false
false
~~~
Gives a link to the "Title" article:

[Contact](about) is a link to the Contact article.

Lastly for repeated links to the same address the "http:" etc
element can be omitted and the article will reuse the last link.

So:

~~~
false
false
~~~
Which gives:

[Apple](https://www.apple.com/) goes to what "Apple" was linked to higher on the page.
