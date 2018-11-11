# dotfiles

Personal dotfiles, for use across all my MacOS and Linux systems.

### Installing on Remote Servers

First, install [fabric](http://docs.fabfile.org/en/1.14/index.html) if you don't have it already.
Create a file called `serverlist.txt`, in which you list the usernames, hostname, and port of each server that you want to update, in the form \<user\>@\<host\>:\<port\>.
For example:
```
ethan@myserver1:2222
ethan@myserver2:2222
ethan@myserver3:2222
```
Save the file in this directory.
Then simply call
```
python update_remote.py
```
The script will attempt to ssh to each server, prompting you for your password each time.
This script does not currently support non--password-based authentication methods.
