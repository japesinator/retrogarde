#!/usr/bin/python

import os
from sys import argv
import string
import random
import getpass
import shutil
import glob
import hashlib
import bleach

def random_user():
    return ''.join(random.choice(string.ascii_uppercase) for i in range(12))

def do_stuff(level, user2):
    os.remove("/home/{}/.bashrc".format(user2))
    for filename in glob.glob(os.path.join('/retrogarde/level_{}'.format(level), '*.*')):
            shutil.copy(filename, '/home/{}/'.format(user2))
    shutil.copy("/retrogarde/.bash_profile", '/home/{}/'.format(user2))
    shutil.copy("/retrogarde/level_{}/.bashrc".format(level), '/home/{}/'.format(user2))
    os.system("chown -R {}:{} /home/{}/".format(user2, user2, user2))

def user_change(username):
    os.chdir("/home/{}/".format(username))
    os.system('sudo -u {} /bin/bash'.format(username))

def create_user(username):
    os.system('useradd -m -s /bin/bash {}'.format(username))

def add_user_upgrade(user1, user2):
    os.system('echo "{}     ALL=({}) NOPASSWD: /bin/bash" > /etc/sudoers.d/{}'.format(user1, user2, user1+user2))
    os.system('echo "{} ALL=NOPASSWD: /usr/bin/python /retrogarde/user.py*" > /etc/sudoers.d/{}'.format(user2, user1+user2))

def upgrade_user(auth_hash):
    results = auth(hashlib.sha256(auth_hash).hexdigest())
    if not results[0]:
            return
    new_user = random_user()
    create_user(new_user)
    add_user_upgrade(getpass.getuser(), new_user)
    do_stuff(results[1], new_user)
    user_change(new_user)

def auth(auth_hash):
    if auth_hash == "fbb7b5bf4ca348eeeebf8cc3660712859a5a1fbf18e83217a57ce203fb51d5c2":
        return (True, 0)
    elif auth_hash == "68ed9e5c97b47adb44277192d9e6f8f9a1e09e5acf993ad6fdd0d373fbeeca83":
        return (True, 1)
    elif auth_hash == "7e0504324d9a421dda6b6f34aa461ed64a3e0a55ba5b027c396af9be95ee5a61":
        return (True, 2)
    elif auth_hash == "d154c401c3d8a464d1fb755bd7afbd2c62901f79e9aba0bd86853f4cb66d69cf":
        return (True, 3)
    elif auth_hash == "d03c0323480e1a6ccb8dbc9aca7b84451358167547ac4deabea1973df99f1e68":
        return (True, 4)
    elif auth_hash == "8a8a12b68cd5ca212993326b86dc95fc9bc1bf1505d7bb4b22de21dff42c28f3":
        print("You win! Congratulations!")
	hs_name = raw_input ("Please enter your name, enclosed in quotes, for our leaderboard\n")
	hs_name = bleach.clean(hs_name)
	os.system ("echo \"" + hs_name + "\" >> /var/www/construct.pw/winners.txt")
	print("Check it out at http://construct.pw/winners.txt!")
	return (False, )
    else:
        return (False, )

if __name__ == "__main__":
   upgrade_user(argv[1])
