@markdown
It's possible to display a tooltip when hovering over an image index entry
linking to a child or sibling page. To achieve this blurb can be defined
in the metadata for the linked to page. *blurb* was less characters
than *tooltip* to type, it felt more appropriate.

So for example the [2001](Diary/2001) page has metadata:

~~~
---
blurb: Utah Florida and the Peak District
~~~

The tooltips are implemented using [CSS](https://www.w3schools.com/css/css_tooltip.asp),
with a [transition](https://www.w3schools.com/css/css3_transitions.asp) so they don't
appear immediately.
