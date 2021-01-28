I reworked the way I edit the *Pagoda* database as I had
time on my hands having retired in September 2020. Previously I edited
using PHP scripts on my website. These have been replaced by a
[Sinatra](http://sinatrarb.com/) webapp I run locally. This has a
number of advantages.

Firstly there's less hoops to jump through. When I edited on my website
I had to download the changes from the MySQL database after editing. The new
editor makes changes to text files on my computer so no need to download
a MySQL dump to save the changes. There were a number of steps when I uploaded
changes to *Pagoda*, now a MySQL upload script is generated from the text files
and that is uploaded.

Editing locally is more secure. It was unlikely anyone could or would bother
to attack the PHP scripts for editing, but if the PHP scripts no longer
exist then they definitely can't. The canonical data being in text files
rather than a MySQL database is also more future proof - I did hit problems
with incompatibilities between versions of MySQL.

The new editor allows for games being added, and maps
game links found by scanning on the fly. The old PHP editor didn't, and
I could only check the impact of adding games the next time I uploaded which was
once a month in the past. The new editor also checks for not finding
scan records we found previously. Before this was haphazard.

Initially I used cookies so the HTML pages for the new editor
could communicate with the Sinatra Ruby code. In one or two places this didn't
work as I desired so the HTML pages now make AJAX calls to get and set
variables the HTML and Ruby code both know about.

Like all good software projects there's plenty of room for improvement.
I ought to add the ability to explicitly type the fields in the text data
files, doing it implicitly has caused issues with games whose names are
numbers. I still need to detect duplicate names better. 
