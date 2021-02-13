@markdown
The *match* script command only succeeds if the first argument matches
	a given regular expression.

An example:

~~~
every A
attribute href Url
match Url "walkthroughs/.*"
text Title
write Site Type Title Title Base+Url
~~~

Here only those links starting with "walkthroughs/.\*" are written out.
