@markdown
The *matchnot* script command only succeeds if the first argument doesn't match
	a given regular expression.  So it is the opposite of the *Match* command.

An example:

~~~
every A
attribute href Link
matchnot Link ".*'.*"
text Title
write Site Type Title Title Base+Link
~~~

Here only those links not containing a "'" (apostrophe) are written out.
