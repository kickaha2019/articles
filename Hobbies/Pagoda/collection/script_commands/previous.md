@markdown
The *previous* script command is like the *Next* command save that
	it's the previous element not the next element with a given tag
	that it tries to find.

An example:

~~~
every A
attribute href Link
previous H3
text Title
log Link Title
~~~

Here all the links from the current position are logged, but with the
	title from the H3 element before each link.
