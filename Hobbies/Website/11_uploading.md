@markdown
I upload my website in a bespoke way by running a script.
I avoid dependencies on third-party tools, I can be clever
about what files to upload, I can optimise the uploading
of files. The script relies on ssh access to the account
on the server hosting the website.

# Shadow copy
A shadow copy of the source area for the website is maintained,
where each shadow file contains a timestamp for the source file
it is shadowing. This allows the uploading or synch process
to easily work out what files have
been changed or added or deleted.

The process of working out the modifications to the website since
last time it was synched does not go out to the copy of the
website on the hosting server. Yes this runs the (small) risk of
getting out of step. If the worst came to the worst the shadow copy
and the copy on the hosting server could be deleted and the
synching process would start from scratch.

# Tarring changed and added files
The synching process creates a tar file containing the changed and
added files. On a Mac (as I am) it is important to have the
environment variable *COPYFILE_DISABLE* set to something to
stop the MacOS version of tar adding special MacOS specific
files into the archive. It is also important to edit the
archive filenames to make them relative to the source directory.
This makes extracting the files on the hosting server easier.

# Generate SSH script
A SSH script is generated which extracts the files from the tar
file then deletes files which have been deleted from the source
website area. It also removes the tar file from the hosting server
at the end.

# SFTP putting files to the hosting server
We use SFTP to upload the tar file to the hosting server.

# Running SSH script
We use SSH to run the generated SSH script, then check the
log file for errors. If all is OK uploading has succeeded.

If there has been an error after generating the tar file
then the SFTP and SSH steps must be manually rerun. One could
do a separate SFTP and SSH for each modified file, but if
you're uploading a lot of files this is much slower than
uploading in bulk. Perhaps I'll make the process safer by
only committing changes to the shadow copy at the end.
