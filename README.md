# dotfiles

Personal dotfiles, for use across all my MacOS and Linux systems.

### Installing on Remote Servers

First, install [fabric](http://docs.fabfile.org/en/1.14/index.html) if you don't have it already.
Create a file called `serverlist.txt`, in which you list the hostnames of the servers that you want to update.
For example:
```
myserver1
myserver2
myserver3
```
Save the file in this directory.
Then simply call
```
fab update_remote
```
fabric will ssh to each server and update the dotfiles there.
