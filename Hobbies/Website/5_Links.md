@markdown
One can explicitly put URLs for links in Markdown of course, but the Ruby
code supports other ways of specifying what the URL for a link should be.

The URL can be a symbolic reference defined in a file *links.yaml* in the
top level of the directory structure defining the website. This file has
contents like:

~~~
---
1Password:             https://1password.com/
Abbey_Cwm_Hir:         https://www.abbeycwmhir.com/
Arcadia:               https://www.pocruises.com/cruise-ships/arcadia/
Adobe:                 https://www.adobe.com/
Affinity_Photo:        https://affinity.serif.com/en-gb/photo/
A_Korean_Odyssey:      https://www.koreandrama.org/a-korean-odyssey/
Air_New_Zealand:       https://www.airnewzealand.co.uk/
Angelite_Cats_Hotel:   https://www.angelitecatshotel.co.uk/
Anglesey_Abbey:        https://www.nationaltrust.org.uk/anglesey-abbey-gardens-and-lode-mill
Apple:                 https://www.apple.com/
~~~

Using such a file means there's only one place to change if the URL for
a company or ship or place changes.

The URL can also be a partial path in the website, and the Ruby
will work out what the target HTML file is and what the relative URL
should be. An example on the About page markdown:

~~~
There's a [diary](Diary) on this website of notable events,
~~~

Doing this means it doesn't matter if either the target page or
calling page move, the Ruby code will work everything out.
