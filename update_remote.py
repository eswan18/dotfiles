from fabric import task, Connection
import getpass, sys
from paramiko import AuthenticationException

repo_remote = 'https://github.com/eswan18/dotfiles.git'

with open('serverlist.txt') as f:
    servers = [server.strip() for server in f.readlines()]

for server in servers:
    p = getpass.getpass(f'Password for {server} ')
    c = Connection(server, connect_kwargs={'password': p})
    result = c.run('mktemp -d', hide='out')
    tempdir = result.stdout.strip()
    result = c.run(f'cd {tempdir} && git clone {repo_remote}', hide='out')
    result = c.run(f'cd {tempdir}/dotfiles && ./update_local')
    print()
