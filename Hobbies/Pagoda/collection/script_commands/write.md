@markdown
The *write* script command writes out a series of values (normally
	to a file).  

An example:

~~~
url "http://mysterymanor.net/walkthroughs.htm"
every A
attribute href Url
match Url "walkthroughs/.*"
text Title
write Site Type Title Title Base+Url
~~~

This script will write out all the walkthroughs found on the Mystery Manor website.
