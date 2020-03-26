The *log* script command is used mostly for logging what a script is doing.
	It's useful when developing or debugging a script to see how far it is
	executing to.

An example:

~~~
every A
attribute href Url
log Url
match Url "walkthroughs/.*"
text Title
write Site Type Title Title Base+Url
~~~

Here the *log* command would list all the link URLs found, but only
those links starting with "walkthroughs/.*" are written out.
