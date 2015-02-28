#!/bin/bash

# construct.pw level 2 source code  #
# --------------------------------- #
# Made by JP Smith && Adam Ringwood #
shopt -s expand_aliases

# Setup
## Creates a file called checker, which can be analyzed for the password
# cp /usr/share/challenge2/checker .

# Step 0: Intro
echo "Welcome to construct.pw level 3!"
echo "There's a program in here that's supposed to check a password you enter"\
  "and if it's correct, output another password (which you want). I don't know"\
  "the password, and that string trick doesn't seem to work, but I'm"\
  "*overflowing* with ideas here."
echo ""
echo "Ed. note: we haven't gotten too much more subtle"
