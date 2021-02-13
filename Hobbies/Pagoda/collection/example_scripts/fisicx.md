@title		fisicx.com walkthroughs
@markdown
The whole script

~~~
root Root
	set Site "fisicx.com"
	set Base "http://www.fisicx.com"
	set Type "Walkthrough"
	expect Site Type "Scratches" "Scratches" Base+"/scratches/walkthrough.htm"
	url Base+"/"
	every LI
	next A
	attribute class Class
	matchnot Class "first"
	attribute href Link
	text Title
	write Site Type Title Title Base+"/"+Link
~~~

A breakdown of the script

~~~
root Root
~~~

Declares *Root* as an entry point into the script

~~~
	set Site "fisicx.com"
	set Base "http://www.fisicx.com"
	set Type "Walkthrough"
~~~

Sets variable *Site* to hold the site name, *Base* to be the base URL,
and *Type* as the type of links.

~~~
	expect Site Type "Scratches" "Scratches" Base+"/scratches/walkthrough.htm"
~~~

Says on the *fisicx.com* site we expect to find a link to a walkthrough for *Scratches*.

~~~
	url Base+"/"
	every LI
~~~

Loads the webpage at *Base+"/"* then loops over every *LI* element on the
	webpage.  The looping here means that the following lines are executed for
	every *LI* on the webpage.

~~~
	next A
	attribute class Class
	matchnot Class "first"
~~~

On the webpage move to the next *A* element, get its *class* attribute,
	and check the attribute value is not *first*.

~~~
	attribute href Link
	text Title
	write Site Type Title Title Base+"/"+Link
~~~

Get the URL and the text for the *A* element, then write those out for the
	site and type.
