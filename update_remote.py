from fabric import task, Connection
import getpass

with open('serverlist.txt') as f:
    servers = [server.strip() for server in f.readlines()]

for server in servers:
    p = getpass.getpass(f'Password for {server} ')
    c = Connection(server, connect_kwargs={'password': p})
    c.run('echo $HOSTNAME')
