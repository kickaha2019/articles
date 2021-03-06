@title		Ruby
@markdown
[Ruby](https://www.ruby-lang.org/en/) is currently the computing language I first reach
for when I want to implement something.  I'm not going to claim
it's the greatest language, that's both subjective and depends on
what you want to implement.  But for me Ruby has a lot of neat
features that I like.

Ruby is a scripting language so I can just code and run, there's
no compile cycle, no need for declarations to tell the language
what a variable is.  It's an expressive language and I've got used
to using blocks and saying more in less lines of code.  So to
look for "Error" in a log file one can go:

~~~
IO.readlines( "run.log").each do |line|
	raise "Error" if /Error/ =~ line
end

~~~
Ruby has numerous helpful shortcuts, for example in the code
above there's an
if after the statement it's guarding.  Other shortcuts
are omitting the () if calling a method with no arguments,
the return value defaulting to the value of the last
statement in a method.

One can subtract arrays and get something sensible so
for instance:

~~~
[1,2,3] - [2] => [1,3]

~~~
that is element 2 has been removed from elements 1,2,3.

All in all Ruby is an expressive language with a lot of
people contributing libraries to it.  But it can be learnt
in an afternoon.
