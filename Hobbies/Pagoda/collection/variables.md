@markdown
Variables only take string values.  A number of commands will set
	values for variables.  The ''Set'' command can concatenate variables to
	give a new value.  So for instance:

~~~
set H "Hello"
set W "World"
set HW H+" "+W
log HW
~~~

Will log *Hello World*.  The *Match*
command can be used to extract
	strings from inside other strings.

The values of variables only persist on the context passed to
	script commands after the variable is set.  So the commands:

~~~
every A
attribute href Link
log Link
set Link "Blah"
log Link
~~~

Results in the link followed by *Blah* being
	logged for each A element.
