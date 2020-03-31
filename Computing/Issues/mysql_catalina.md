MySQL 5 didn't start up from the preference pane so installed MySQL 8.

MySQL 8 didn't appear as a preference pane so had to remove
the MySQL 5 preference pane and it did appear.

Exporting or importing data tended to get the error message
*The MySQL server is running with the --secure-file-priv option so it cannot execute this statement*. MySQL 8 is more secure but for my usage needed to disable the extra security.
Created a /etc/mysql/my.cnf file containing:

~~~
false
false
false
true
false
false
true
false
false
false
~~~
Inside the Preference pane for MySQL set this file to be read on MySQL startup.

Exporting data from MySQL using *select ... into outfile* resulted in files
owned by *_mysql* which I didn't have access to. No real work around here
apart from using sudo.

Trying to load a database dump from MySQL 8 into a MySQL 5 database got the error
* Unknown collation: 'utf8mb4_0900_ai_ci' *. Had to set the character set
to utf8 for the database by:

~~~
false
~~~
