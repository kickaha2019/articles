#title Linking the pages
#markdown
There's a set of Ruby scripts which scan the
sources for words to use as links.  To increase the
connectedness of the pages the scripts regard
"farm" and "farmer" and "farming" as being the same
root word.

To achieve this the Ruby code tries to remove common endings like
"-er" from words but this can be problematic.
So it wouldn't be right to remove the "er" ending from
"flower" as "flow" is not connected with "flower".
The scripts use a number of data files to guide the
simplification of words.

Often in poetry words may be condensed or distorted -
for instance "over" may appear as "o'er".  The Ruby code
tries to map "o'er" to "over".

More common words like "the" are excluded from being links.
