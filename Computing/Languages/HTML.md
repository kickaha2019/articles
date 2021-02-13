#markdown
[HTML](https://www.w3schools.com/html/default.asp) is the language of the web, what webpages are
written in.  There's so much out there I don't feel I can say
anything that hasn't been said many times already.

These webpages have the property that if you widen the browser
window the webpage itself remains centred in the window.  Narrow
the browser window and the webpage will stay centred until it is
wider than the window in which case you'll have to scroll
the browser window.  The webpage itself stays a fixed size.  I
like this behaviour and achieve by having a centered DIV element which
is relatively positioned and has a set width.  Inside the DIV
can be absolutely positioned elements or a centred TABLE.

So the HTML is like:

~~~
#html
<HTML>
    <BODY>
	<CENTER>
	    <DIV STYLE="width: 800; position: relative">
		...
	    </DIV>
	<CENTER>
    </BODY>
</HTML>

~~~
It's not fashionable but I use TABLEs a lot for layout.
I just find them easier for me to work with.  Your
mileage may vary.
