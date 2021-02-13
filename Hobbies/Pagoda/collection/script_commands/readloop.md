@markdown
The *readloop* script reads lines from a file,
and for each line sets values into one or more
variables then executes the following commands.

An example:

~~~
readloop "list.txt" fruit
log fruit
~~~

where *list.txt* contains:

~~~
apple
banana
citrus
~~~

would log out "apple" "banana" and "citrus".
