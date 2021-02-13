#title Deleting from iBooks
#markdown
Apple re-engineered *iBooks* in Mavericks, but it's a little
under-implemented. One omission is that you can't delete from
*iBooks* books and PDFs you manually added into *iBooks*
itself. I'm assuming Apple will fix this, but for now I have a workaround
which involves creating a special collection called *Trash*. Into
*Trash* I then put the books I want to delete, close *iBooks*
and run a script to empty the *Trash* collection.

The script first finds the *sqlite3* database containing the *iBooks*
data. This at the moment will be beneath:

~~~
~/Library/Containers/com.apple.iBooksX/Data/Documents/BKLibrary

~~~
Next we look in the *ZBKCOLLECTION* table to find the *Trash*
collection, and get its *ZCOLLECTIONID*.

If we do find that we need to move to the *ZBKLIBRARYASSET*
table and find the paths (*ZPATH*) and titles (*ZTITLE*)
for the books in the *Trash* collection. We ignore books
with a purchase date (ZPURCHASEDATE is null).

Finally we *rm -r* each such path. Reopen *iBooks* and it
will realise the files have gone missing, and forget about the
deleted books.

This only works for books that have been manually added,
not for books bought from *iTunes* for instance. Those can
and should be deleted just inside *iBooks* itself.
