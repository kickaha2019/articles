@markdown
The *prune* script command stops looping over elements from an *Every* or
	similar command.  It's used to abandon a search when certain conditions have
	been satisfied.

An example:

~~~
every A
attribute href Link
match Link "reviews/.*"
prune
log Link
~~~

This will log the first link found which is a review link.
