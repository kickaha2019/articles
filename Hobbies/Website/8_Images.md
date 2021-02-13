#markdown
The images for a webpage are defined in the markdown but
Markdown itself doesn't specify how the images should be
rendered on the page. I follow a convention in the markdown
for the image definitions which controls how the images are
rendered.

If an image is immediately followed by text then the image
is displayed small size inset into the text using
[floats](https://www.w3schools.com/css/css_float.asp).

If an image is followed by a blank line then the image is displayed
large size centered on the page.

Images at the end of markdown not followed by text (or blank
lines then text) are displayed as a gallery of thumbnails.

For a small size of an image clicking on it will display a
larger version overlaid on the current page, clicking anywhere
will hide the overlaid image.
