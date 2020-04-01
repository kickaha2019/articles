Most of the text on an article page will be in a "Text"
declaration.  The contents of a "Text" declaration are
unformatted apart from blank lines will cause gaps in the
article webpage itself.  So for example:

~~~
Text:
	The
	first
	paragraph.
	
	The 
	second
	paragraph.

~~~
Comes out as:

~~~
The first paragraph.
	
The second paragraph.

~~~
Words can be bolded by surrounding them with pairs of
apostrophes.  So:

~~~
Normal text.  *Bold text.*

~~~
appears as "Normal text.  *Bold text.*"

"Text" declarations can contain links.  These are text elements
delimited by square brackets.  The first kind of link is an explicit
HTTP reference.  So example:

~~~
[https://www.apple.com/ Apple] is a link to Apple's website.

~~~
Comes out as:

[Apple](https://www.apple.com/) is a link to Apple's website.

The next kind of link is a link to another file in the website
the articles are being generated into.  So for example:

~~~
[/Users/peter/Sites/index.html index.html] is an absolute link to the website home page.

~~~
Comes out as:

[index.html](/Users/peter/Sites/index.html) is a link to the website home page.

The link can be relative.  So:

~~~
[about Contact] is a link to the Contact article.

~~~
Gives a link to the "Title" article:

[Contact](about) is a link to the Contact article.

Lastly for repeated links to the same address the "http:" etc
element can be omitted and the article will reuse the last link.

So:

~~~
[Apple] goes to what "Apple" was linked to higher on the page.

~~~
Which gives:

[Apple](https://www.apple.com/) goes to what "Apple" was linked to higher on the page.
