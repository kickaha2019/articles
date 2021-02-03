---
date: February 25th 2020
title: Website makeover
---
I've refreshed my personal website a little. Most noticeable will be that the logo at the top of each page has changed. Beneath that are the breadcrumbs - a line giving where in the website the page is, the landing page doesn't have any breadcrumbs. Beneath that on most pages on the left hand side there is an index to either child pages or to sibling pages if there are no children. If there is content on the page then that appears on the right hand side.

Less immediately noticeable is that the website is more responsive to the size of the browser window it is viewed in than before. Four different browser widths are supported: 360 for small phones, then 768, then 1280, then for big screens 1920. The size of images and font sizes used vary according to the browser width. I'm undecided as to whether as the browser window expands in width to stretch the page display sidewards or not.

Even less immediately noticeable is that large images are no longer displayed using [Lightbox2](https://www.lokeshdhakar.com/projects/lightbox2/), instead they tend to be displayed all on a page. [Lightbox2](https://www.lokeshdhakar.com/projects/lightbox2/) was clever but stylistically I felt it didn't fit, it was counter immersive. Not using [Lightbox2](https://www.lokeshdhakar.com/projects/lightbox2/) removes a dependency on external software, and also makes my personal website much more HTML and CSS, not HTML CSS and Javascript. The less technologies one uses the better, the simpler maintenance is. Javascript is still used because I use [Leaflet.js](https://leafletjs.com/) for the maps, but that is self-contained.

Behind the scenes the definitions for the pages no longer attempt to say where or how images should be displayed on the page. Now each page is defined as text to go on that pages plus a set of images for that page. The website generator decides how to add the images into the webpage it generates. This eases creating the pages in the first place, but also simplifies making the webpages responsive to different browser widths.

I'm pleased I have simplified how I construct my personal website. I could have used many tools like [Drupal](https://www.drupal.org/), [Joomla](https://www.joomla.org/), [Jekyll](https://jekyllrb.com/) - but these tend to trade off simplicity for flexibility to satisfy many different requirements. Also for me implementing a website generator is an engaging activity in itself.
