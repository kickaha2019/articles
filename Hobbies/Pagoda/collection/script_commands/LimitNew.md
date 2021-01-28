The *LimitNew* command restricts the number of times a following
	*Url* command will try to fetch a webpage from the Internet.  
	So the script lines:

~~~
limitnew 10
every A
attribute href Link
url Link
next TITLE
attribute text Title
log Title
~~~

will only list 10 titles at most, assuming none of the URLs are cached.  The
	extra URLs will just be ignored as if they didn't exist on the original
	webpage.
