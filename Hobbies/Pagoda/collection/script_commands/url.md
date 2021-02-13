#markdown
The *url* command loads a HTML page at a given URL, and
	sets that page into the context, positioning at the first
	element on the page.

The *url* command takes an optional parameter for a number
	of days to cache the HTML page loaded from the URL.  
	An example:

~~~
url http://www.alofmethbin.com/ 50
next TITLE
text Title
log Title
~~~

this logs the title from the home page on my website.  The 
	page is only read from the web address if 50 days has elapsed
	since the last time it was read.
