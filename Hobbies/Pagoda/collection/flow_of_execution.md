Each script command can succeed zero, one, or many times.  Each times
	it succeeds it passes the context which it may have modified to
	the next command in the script being executed.  When a script command
	has finished it returns to the previous script command.

The script:

~~~
every A
attribute href Link
log Link
~~~

Is executed as though it was written in a conventional programming
	language like:

~~~
for every A element after current element do
	position at that A element
	set Link to attribute of current element
		log the value of variable Link
	end
end
~~~

The *Call* and *Run* script commands are special.  The *Call* command
	behaves as though it was replaced by the commands in the script
	being called.  The *Run* command on the other hand executes the
	commands in the script being run, then restores the original context
	and executes the remaining commands in the starting script.
