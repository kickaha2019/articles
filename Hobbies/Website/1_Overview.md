The content on most of the pages on this website is
written in [Markdown](http://daringfireball.net/projects/markdown/), in particular
[Github Flavoured Markdown](https://github.github.com/gfm/) with
extensions like [Tables](https://github.github.com/gfm/#tables-extension-).
Markdown is a good medium for writing webpages in, and has good tool
support.

The way the HTML from the Markdown *.md* source files is packaged up
into a structure of webpages is bespoke. Each *xxx.md* Markdown file can
have associated with it a *xxx.yaml* metadata file which influences the way
the generated HTML is displayed. The *.md* files are in a directory
structure which gives a structure to the website as a whole.

There is Ruby code which compiles the *.md* sources files into a
structure of HTML files. This leverages the
[commonmarker](https://github.com/gjtorikian/commonmarker) Ruby gem.
It uses a custom HTML renderer to achieve some of the packaging required,
for instance suppressing the *\<p\> \</p\>* for the first
paragraph to avoid an unwanted blank line.

The Ruby code decides how the pages are laid out. CSS is used to
vary the way the website looks at different screenwidths - different
font sizes and image sizes are used at different resolutions.
