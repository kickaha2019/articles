---
title: 6:Titles and icons for pages
---
Most of the generated webpages will have on them a set of links
either to their child pages, or to their sibling pages if there
are no children. These links are displayed as an icon with a
title underneath.

By default the icon is taken from the first image on the target
page, and the title is the filename or directory for the target
page. This can be modified using the metadata in the YAML file
for the child page.

So for instance this page has YAML metadata of:

~~~
---
title: Titles and icons for pages
~~~

which overrides its title to be **Titles and icons for pages**.

The Computing section has YAML metadata of:

~~~
---
icon: imac.jpg
~~~

so its icon is a picture of an older iMac.

The titles also appear in the breadcrumbs at the top of a
webpage, underneath the logo. In passing if you're curious
the logo is a picture from
[Gardens by the Bay](https://www.gardensbythebay.com.sg/) in Singapore.
