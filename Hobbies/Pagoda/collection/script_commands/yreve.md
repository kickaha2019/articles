@markdown
The *yreve* script command is similar to the *Every* command
	save that it loops backward in the HTML document, not forward.

An example:

~~~
yreve A
attribute href Link
log Link
~~~

This will log out all the links before the current position in the HTML document,
	going backwards.
