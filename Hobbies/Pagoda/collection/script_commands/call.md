#markdown
The *call* command executes a sub-branch, continuing with
	the following commands in the script for each successful
	completion of the sub-branch.  So the
	script lines:

~~~
call Fred
log Link
~~~

where branch *Fred* is defined as:

~~~
branch Fred
	every A
	attribute href Link
~~~

would result in each link URL in the current HTML document (from the
	current position) being logged.  *call* is different to *run* which
	would fully explore branch *Fred* then carry on in the script as
	though *Fred* had not been called.
