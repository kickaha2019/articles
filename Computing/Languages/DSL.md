@title		Domain Specific Languages
@date		September 8th 2012
@markdown
A domain specific language (DSL) is a great way of
implementing systems focussed on particular areas.  You
can write everything in your favourite general-purpose
language (be it *Ruby* *Java* or assembler
language).  But there are advantages to using a DSL.

A popular example.  [Cucumber](https://cucumber.io/) uses a DSL called
Gherkin to write its scenarios in for BDD testing.
There are a number of advantages in using a DSL like
Gherkin to program in rather than a general-purpose
language.  Firstly the code is much more readable, less
obfuscated with special syntax.  Secondly the DSL isolates
the code from the next layer of software technology.  In the
case of Gherkin one could run the same scenarios not on
a Ruby based Cucumber but on a Perl imitation.  Lastly
the DSL restricts what can be coded - it is as bad to have
10 ways of doing something as to have none.

In my hobby software development I've devised some homespun
DSLs which I find useful.  One is for scraping information
off webpages.  An example of this 'DSL':

~~~
every TD
attribute class Class
match Class "dataRowL"
text Date
next TD
text Description
next TD
text Amount
if
	match Amount "\D*(\d+.\d+)\D*" Value
	write Account Date Description Value ""
endif

~~~
This code snippet goes through every TD in a HTML
page, check for those with class "dataRowL", then
gets a date, description, and amount from the following
TD fields.  If the amount is a number then it
writes out the details.

These webpages also use a very simple DSL.  For illustration
here is this webpage as coded:

~~~
Date:
	September 8th 2012

Title:
	Domain Specific Languages

Text:
	A domain specific language (DSL) is a great way of 
	...

Code:
	every TD
	attribute class Class
	match Class "dataRowL"
	text Date
	next TD
	text Description
	next TD
	text Amount
	if
		match Amount "\D*(\d+.\d+)\D*" Value
		write Account Date Description Value ""
	endif

Text:
	This code snippet goes through every TD in a HTML 
	...

Code:
	...
~~~
