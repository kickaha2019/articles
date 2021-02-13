@markdown
The *next* script command will position at the next element with a
	given tag from the current position in the HTML document, and then execute the
	following script commands.  If there is no such element then the *next*
	script command silently backtracks.

An example:

~~~
every A
attribute href Link
next H3
text Title
log Link Title
~~~

Here all the links from the current position are logged, but with the
	title from the H3 element after each link.
