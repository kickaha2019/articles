@markdown
The *range* script command sets a given variable to a sequence of numbers,
	defined by a start, increment, and end.  The *range* command can be
	stopped before the end using a *Prune* command in the following
	commands.

An example:

~~~
range 1 2 5 Number
log Number
~~~

This will log out "1" "3" and "5".
