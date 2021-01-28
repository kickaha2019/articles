The *textall* command is similar to the *Text* command
	save that it sets a variable to all the concatenated texts
	inside the current element on the HTML page.  An example:

~~~
next A
textall LinkText
log LinkText
~~~

this will log the text for the next *A* element even if the
	text is embedded inside a *SPAN* element say.
