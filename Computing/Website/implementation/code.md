The "Code" declaration outputs a block of preformatted text.  Tabs will be indented
two spaces, "&nbsp;"s are used to force the indentation in the HTML.  End of lines
in the article text file will be newlines in the HTML.

So:

~~~
false
false
false
false
false
~~~
Comes out as:

~~~
false
false
false
true
~~~
For both the "Text" and "Code" declarations strange characters will be replaced by
HTML entities or standard ASCII characters.  So "&" is replaced by "&amp;", and
"<" is replaced by "&lt;" (if I've got that right.)