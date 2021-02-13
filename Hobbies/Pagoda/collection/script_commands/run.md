@markdown
The *run* command executes a sub-branch, then restores
	the original context and executes the following commands
	in the script.  So the script lines:

~~~
run AdventureCorner/Root
run AdventureGamers/Root
run AdventureLantern/Root
~~~

run the Root scripts in the *AdventureCorner.txt*,
	*AdventureGamers.txt*, and *AdventureLantern.txt* files.

The syntax:

~~~
run Branch
~~~

runs the*Branch* script in the current script file.

The syntax:

~~~
run File/Branch
~~~

runs the *Branch* script in a file *File.txt*.
