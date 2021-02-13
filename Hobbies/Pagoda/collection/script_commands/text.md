#markdown
The *text* command sets a variable to the text for the
	current element on the HTML page.  An example:

~~~
next A
text LinkText
log LinkText
~~~

this will log the link text for the next *A* element.  The
	text returned will any text immediately after the element, not
	text nested inside child elements.
