#!/bin/bash

# construct.pw level 0 source code  #
# --------------------------------- #
# Made by JP Smith && Adam Ringwood #
shopt -s expand_aliases

# Setup
## Creates a file called PASSWORD.txt, a directory called .hidden_directory, and
## a file in said directory also called PASSWORD.txt, containing the flag.
echo "I'm sorry, your princess is in another castle, specifically one called"\
  "\"hidden_directory\" or something, there might be weird punctuation. I"\
  "think it's hidden, if you know of a way to look for stuff like that. Good"\
  "luck!" > PASSWORD.txt
mkdir .hidden_directory
echo "You found it! Congratulations! Your password is 'BALL_IS_LIFE'" \
  > .hidden_directory/PASSWORD.txt

# Step 0: Intro
echo "Welcome to construct.pw!"
echo "You are trapped in the confines of a linux filesystem and guarded by several terrifying binaries."
echo "Are you bad enough to break free?"
echo ""
echo "Type \`ls' to look around"

# Step 1: `ls`
lsfun () {
  unalias ls
  echo "You see a list of files, reproduced below. You're slightly curious as"\
    "to whether the file called \`PASSWORD.txt' could contain anything you"\
    "might find useful, but you doubt it"
  echo ""
  ls
}
alias ls='lsfun'
