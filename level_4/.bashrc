#!/bin/bash

# construct.pw level 4 source code  #
# --------------------------------- #
# Made by JP Smith && Adam Ringwood #
shopt -s expand_aliases
export PS1="hacker@machine:\u "
red='\033[0;31m'
NC='\033[0m' # No Color

# Setup
## Creates a file called checker, which can be analyzed for the password
# cp /usr/share/challenge4/checker .

# Step 0: Intro
echo -e "${red}Welcome to construct.pw level 5!${NC}"
echo -e "${red}They want you to somehow guess a number they make up IN THE PROGRAM.${NC}"\
  "${red}I don't know what kind of magic this is, you'll need to mess with the${NC}"\
  "${red}program while it's running somehow, and I don't know how to do that, you${NC}"\
  "${red}would need a 'de-bugger' of some sort.${NC}"
echo ""
echo -e "${red}Good luck!${NC}"
