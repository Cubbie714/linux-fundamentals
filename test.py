import os
from os import getcwd, system

system('clear')

name = "Dunieski"
print(name)

print('This user is logged: ', os.getlogin())
print('Current working directory: ', getcwd())
print('Directories: ', os.listdir())

print(' ')
username = input('Please enter a user to be added >> ')
system(f'sudo useradd {username}')
system('tail -n1 /etc/passwd')
print('Take a peek at the groups available right now:')
system('cat /etc/group')
group = input(f'What group do you want to add {username} to? >> ')
system(f'sudo usermod -aG {group} {username}')
system(f'cat /etc/group | grep {group}')
