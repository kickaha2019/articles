[PHP](https://php.net/) is a scripting language especially for web servers
generating [HTML](https://www.w3schools.com/html/default.asp) pages.  I use for a few of my webpages,
particularly where data is being retrieved from a
[MySQL](https://www.mysql.com/) database.

For generating webpages it's cheap and cheerful.  On all
the webhosts I've used PHP has been available.  The
language is similar to a lot of other languages with
some gotchas.  For instance:

~~~
"Hello " + "World"

~~~
does not give "Hello World" but 0.  The string concatenation
operator is "." not "+".  I fall over that every time.
