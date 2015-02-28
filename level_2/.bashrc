#!/bin/bash

# construct.pw level 2 source code  #
# --------------------------------- #
# Made by JP Smith && Adam Ringwood #
shopt -s expand_aliases
export PS1="hacker@machine:\w "
red='\033[0;31m'
NC='\033[0m' # No Color

# Setup
## Creates a file called checker, which can be analyzed for the password
# cp /usr/share/challenge2/checker .

# Step 0: Intro
echo -e "${red}Welcome to construct.pw level 3!${NC}"
echo -e "${red}There's a program in here that's supposed to check a password you enter${NC}"\
  "${red}and if it's correct, output another password (which you want). I don't know${NC}"\
  "${red}the password, and that string trick doesn't seem to work, but I'm${NC}"\
  "${red}*overflowing* with ideas here.${NC}"
echo ""
echo -e "${red}Ed. note: we haven't gotten too much more subtle${NC}"
