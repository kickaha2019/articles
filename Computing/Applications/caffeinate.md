I run a lot of scripts on the *iMac* and some of those scripts
can run for minutes or even hours (for example scripts which archive
large directories). So it is more than annoyance if the *iMac*
decides to go to sleep if I've left it to run the script.

There is a useful command *caffeinate* which will stop the
machine from sleeping for the duration of a sub-command passed
in the command line argument. Use *man* to see what command line
flags *caffeinate*  takes.

Example *caffeinate* command:

~~~
caffeinate -i java -classpath some.jar some.class.name some arguments for java
~~~
