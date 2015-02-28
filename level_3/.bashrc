#!/bin/bash

# construct.pw level 3 source code  #
# --------------------------------- #
# Made by JP Smith && Adam Ringwood #
shopt -s expand_aliases
export PS1="hacker@machine:\u "
red='\033[0;31m'
NC='\033[0m' # No Color

# Setup
## Creates a file called checker, which can be analyzed for the password
# cp /usr/share/challenge3/checker .

# Step 0: Intro
echo -e "${red}Welcome to construct.pw level 4!${NC}"
echo -e "${red}They figured out that trick with strings, and they seem to be putting${NC}"\
  "${red}the password together character by character. Fortunately, we found a test${NC}"\
  "${red}version by an intern of theirs that just prints the password. However, this${NC}"\
  "${red}intern didn't really know as much as you about reversing, and it has one${NC}"\
  "${red}bad instruction that always makes it crash. If you can just get that out of${NC}"\
  "${red}there, it should just show you the password${NC}"
echo ""
echo -e "${red}Good luck!${NC}"
