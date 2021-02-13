@icon		/Links/web.png
@date		Tuesday, 8 May 2012
@markdown
Too much time last week spent sorting out my personal website. Even before last week I was considering moving my own website to a different host as for some reason the images on my website weren't always showing up properly in browsers.  Sporadically only the first part of an image would appear, and one would have to refresh to get the whole image.  Got no joy from the hosting company who said it had to be my connection even though other people also got the problem looking at my website.

At the start of last week however my website vanished totally.  Which meant we also lost email as our emails are based on the website.  Much later the hosting company (named
*Downtownhost* which perhaps they lived up to in this case) claimed someone had unplugged the servers in the Data Centre.  So I decided there and then to move my website to a UK-based hosting company
*VirtualNames*
which other people recommended.  The emails were fairly easy if tedious to set up, and then I changed the nameservers for the domain to get emails working again.  That at least was straightforward.

However uploading my website onto the new hosting provider wasn't.  I use ssh and sftp for security to manipulate files on my website, and run them inside scripts which work out which files need to be uploaded from my local system.  However as I had it ssh and sftp relied on public keys to establish connection and the new hosts didn't support that.  So I had a hair-raising time playing around with a Unix utility called 'expect' to be able to get the scripts working again.  Frightening.  But that got my files back again.

What I didn't get back first off was MySQL access.  Some of my pages use a MySQL database for data, and I couldn't get the PHP to connect to the database.  What I didn't know until after an exchange of emails with a helpful guy on support was that passwords are limited to 16 characters and I was using 20 character ones.  Why does life have to be so complicated!
