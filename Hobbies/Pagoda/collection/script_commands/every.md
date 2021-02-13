@markdown
The *every* script command will loop over every element with a
	given tag from the current position in the HTML document.  That is
	the lines following the *every* command will be executed as though positioned
	at every such element.

An example:

~~~
every A
attribute href Link
log Link
~~~

Will log out all the links from the current position in the HTML document.
