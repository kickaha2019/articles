The [Netbeans](https://netbeans.org/) debugger refused to start.

> One possible cause is that the */etc/hosts* needs to contain the hostname for the computer mapped to
	127.0.0.1 and ::1. See [Stack Overflow](https://stackoverflow.com/questions/33289695/inetaddress-getlocalhost-slow-to-run-30-seconds/33289897). *env | grep HOST* will get the host name.
