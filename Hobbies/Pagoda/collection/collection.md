---
title: Collecting links for Pagoda
---
Most of the links are collected automatically for Pagoda.  Once
a month I run a special web spider to collect links to reviews
and walkthroughs and the like from the websites I link to.  It's
an automated process because collecting links, and checking
existing links are still valid, is too much to do manually.  Websites
change their structures regularly to add to the load.

The web spider is scripted using a custom DSL.  I do use this web
spider for other things like scanning bank statements for what I've spent
so it is general purpose sort of.  The web spider is implemented in Java,
partly for historical reasons.  If I rewrote it I might do it in Ruby.

The matching of links to games in the Pagoda database is another
matter.  Some of that matching has to be done manually - there can
be quite a variation in how game titles are spelt or misspelt.
