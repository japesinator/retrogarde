#!/bin/bash

# construct.pw level 3 source code  #
# --------------------------------- #
# Made by JP Smith && Adam Ringwood #
shopt -s expand_aliases

# Setup
## Creates a file called checker, which can be analyzed for the password
# cp /usr/share/challenge3/checker .

# Step 0: Intro
echo "Welcome to construct.pw level 4!"
echo "They figured out that trick with strings, and they seem to be putting"\
  "the password together character by character. Fortunately, we found a test"\
  "version by an intern of theirs that just prints the password. However, this"\
  "intern didn't really know as much as you about reversing, and it has one"\
  "bad instruction that always makes it crash. If you can just get that out of"\
  "there, it should just show you the password"
echo ""
echo "Good luck!"
