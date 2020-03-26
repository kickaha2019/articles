The *file* command loads a HTML page from a given filename, and
	sets that page into the context, positioning at the first
	element on the page.

If the filename given is a directory name then the *file* command
	will iteratively load all the HTML files found inside that
	directory, executing the following commands for each such HTML file.

An example:

~~~
file index.html
next TITLE
text Title
log Title
~~~

this logs the title from the HTML in file *index.html*.
