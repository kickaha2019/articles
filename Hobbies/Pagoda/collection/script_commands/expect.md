@markdown
The *expect* script command is used to check that a sequence of script
	commands works as intended.  It is used to guard against the structure of
	a website changing, or bugs in a script, meaning that elements being
	scanned for are not found.

An example:

~~~
expect Site Type "Broken Sword II - The Smoking Mirror" "Broken Sword II - The Smoking Mirror" Base+"walkthroughs/BrokenSwordII/index.htm"
url "http://mysterymanor.net/walkthroughs.htm"
every A
attribute href Url
match Url "walkthroughs/.*"
text Title
write Site Type Title Title Base+Url
~~~

Here the *expect* command checks that a walkthrough for the 2nd Broken Sword game
	is found on the Mystery Manor website.

The *expect* command works by executing the following script commands, checking
	for writes matching the arguments to the *expect* command.  If no such writes
	are found then an error is raised when the *expect* command backtracks.
