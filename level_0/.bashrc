#!/bin/bash

# construct.pw level 0 source code  #
# --------------------------------- #
# Made by JP Smith && Adam Ringwood #
clear
shopt -s expand_aliases
export PS1="hacker@machine:\w "
red='\033[0;31m'
NC='\033[0m' # No Color

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
echo -e "${red}Welcome to construct.pw!${NC}"
echo -e "${red}You are trapped in the confines of a linux filesystem and guarded by several terrifying binaries.${NC}"
echo -e "${red}Are you bad enough to break free?${NC}"
echo -e "${red}${NC}"
echo -e "${red}Type \`ls' to look around${NC}"

# Step 1: `ls`
lsfun () {
  unalias ls
  echo -e "${red}You see a list of files, reproduced below. You're slightly curious as${NC}"\
    "${red}to whether the file called \`PASSWORD.txt' could contain anything you${NC}"\
    "${red}might find useful, but you doubt it${NC}"
  echo ""
  ls
}
alias ls='lsfun'
