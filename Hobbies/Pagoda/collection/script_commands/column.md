#markdown
The *Column* command defines a result column, and provides a
	default value if a *Write* command doesn't write out the full
	number of columns.  So the script lines:

~~~
Column "site" ""
Column "type" ""
Column "name" ""
Column "label" ""
Column "url" ""
~~~

declare that the written output has 5 columns for each record,
	*site* *type* *name* *label* and *url*.
