#!/bin/bash

# construct.pw level 1 source code  #
# --------------------------------- #
# Made by JP Smith && Adam Ringwood #
shopt -s expand_aliases

# Setup
## Creates a file called PASSWORD.txt, a directory called .hidden_directory, and
# cp /usr/share/challenge/checker .

# Step 0: Intro
echo "Welcome to construct.pw level 2!"
echo "There's a weird looking binary here, I wonder how you might untangle the"\
  "the *strings* it contains"
echo ""
echo "<subtle hint> look above </subtle hint>"

# Step 1: `strings`
stringsfun () {
  unalias strings
  strings $1
  echo ""
  echo "Whoa, that's a lot of stuff in that binary, if only there was some way"\
    "to look through all of that, some kind of General Regular Expression"\
    "Parser or something."
}
alias strings="stringsfun"
