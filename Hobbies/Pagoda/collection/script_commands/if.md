@markdown
The *if* and *endif* commands surround a block of script commands.
	If the script commands succeed to the final *endif* then the script
	commands after the *endif* will be executed for each success.  If
	the script commands do not succeed then the script commands after the
	*endif* will be executed as though the *if* *endif* block
	didn't exist.

An example:

~~~
set Link "Blah"
if
	every A
	attribute href Link
	match Link "reviews/.*"
endif
log Blah
~~~

If there are links where the URL matches "reviews/.\*" then they will
be logged.

If there are not such links then a single *Blah* will be logged.
