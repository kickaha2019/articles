The whole script

~~~
root Root
	set Site "UHS"
	set Base "http://www.uhs-hints.com"
	run Reviews Site Base
	set Type "Walkthrough"
	expect Site Type "The 11th Hour" "The 11th Hour" Base+"/uhsweb/11thhour.php"
	url Base+"/hints/allhints.php"
	every FONT
	text View
	match View "View Hints"
	previous A
	attribute href Link
	previous B
	text Text
	match Text "(.*?)( \(alt\. title\))*" Title
	write Site Type Title Text Base+Link

branch Reviews Site Base
	set Type "Review"
	expect Site Type "Alida" "Alida" Base+"/articles/reviews/alida.php"
	url Base+"/articles/reviews"
	every A
	attribute href Url
	match Url "/articles/reviews/.+"
	text Text
	write Site Type Text Text Base+Url
~~~

Breakdown of the script

~~~
root Root
	set Site "UHS"
	set Base "http://www.uhs-hints.com"
~~~

Main entry point is *Root*.  Set *Site* to the name for
	the site, and *Base* to the base URL.

~~~
	run Reviews Site Base
~~~

Execute branch *Reviews* passing *Site* and *Base* in.  The current
	context (what webpage we're in and where we are in it) is restored after
	this step.  Execute is a bit misleading, what happens is the web spider
	explores branch *Reviews* as far as it can then carries with *Root*.

~~~
	set Type "Walkthrough"
	expect Site Type "The 11th Hour" "The 11th Hour" Base+"/uhsweb/11thhour.php"
~~~

Set *Type* then declare we expect to see a walkthrough for *The 11th Hour*.

~~~
	url Base+"/hints/allhints.php"
	every FONT
~~~

Load *allhints.php* then loop over every *FONT* element on it.

~~~
	text View
	match View "View Hints"
~~~

Check the text for the *FONT* element is *View Hints*.

~~~
	previous A
	attribute href Link
~~~

If we're at a *View Hints* then go back to the last *A* element and get
the linked to URL.

~~~
	previous B
	text Text
~~~

And then go back to the previous *B* element and get the text.

~~~
	match Text "(.*?)( \(alt\. title\))*" Title
~~~

Set *Title* to *Text* unless *Text* ends with *(alt. title)*
	in which case set *Title* to the text before that.

~~~
	write Site Type Title Text Base+Link
~~~

Write out the details of the link we've found.

~~~
branch Reviews Site Base
~~~

Declare a sub-branch for exploring on this website.  *Site* and *Base* are parameters.

~~~
	set Type "Review"
	expect Site Type "Alida" "Alida" Base+"/articles/reviews/alida.php"
~~~

We're finding reviews here, and we expect to find a review for *Alida*.

~~~
	url Base+"/articles/reviews"
	every A
~~~

Load the reviews webpage, and loop over all the *A* elements.

~~~
	attribute href Url
	match Url "/articles/reviews/.+"
~~~

Check the link URL looks like a review URL.

~~~
	text Text
	write Site Type Text Text Base+Url
~~~

Get the link text and write out the link details.
