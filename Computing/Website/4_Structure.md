The webpages underneath (https://alofmethbin.com/Articles)[https://alofmethbin.com/Articles/index.html]
are generated from a directory structure. For each *.md / *.yaml* file and directory in
that directory structure a corresponding webpage is generated. For a
directory an index.html is generated in the corresponding directory which will
whatever is in the *index.md* or *index.yaml* files inside the directory.

A directory webpage has as child webpages any webpages
for files or directories inside it. This satisfies
most needs apart from when one needs to link
across the website. One example of doing this is the
[list of cruises](Holidays/Cruises) we've been on.

This is accomplished by metadata in the relevant *index.yaml* file. So the *index.yaml* for the list of cruises webpage contains in early 2020:

~~~
---
links:
- path: 2007/Norway
  tag: 2007 Norway
- path: 2009/eastern_med
  tag: 2009 Eastern Med
- path: 2011/black_watch
  tag: 2011 Baltics
- path: 2012/azores_cruise
  tag: 2012 Azores
- path: 2013/rhine_cruise
  tag: 2013 Rhine
- path: 2014/Azura
  tag: 2014 Western Med
- path: 2015/Eclipse
  tag: 2015 Norway and Eclipse
- path: 2016/Arcadia
  tag: 2016 Western Med
- path: 2017/Baltics
  tag: 2017 Baltics
- path: 2018/Columbus
  tag: 2018 British Isles
- path: 2019/Iceland
  tag: 2019 Iceland
~~~

The Ruby compiler translates a reference like *2007/Norway* into a relative URL to the Norway page for the year 2007 in the diary.
