#!/bin/bash

# construct.pw level 1 source code  #
# --------------------------------- #
# Made by JP Smith && Adam Ringwood #
shopt -s expand_aliases
export PS1="hacker@machine:\w "
red='\033[0;31m'
NC='\033[0m' # No Color

# Setup
## Creates a file called PASSWORD.txt, a directory called .hidden_directory, and
# cp /usr/share/challenge/checker .

# Step 0: Intro
echo -e "${red}Welcome to construct.pw level 2!${NC}"
echo -e "${red}There's a weird looking binary here, I wonder how you might untangle the${NC}"\
  "${red}the *strings* it contains${NC}"
echo ""
echo -e "${red}<subtle hint> look above </subtle hint>${NC}"

# Step 1: `strings`
stringsfun () {
  unalias strings
  strings $1
  echo ""
  echo -e "${red}Whoa, that's a lot of stuff in that binary, if only there was some way${NC}"\
    "${red}to look through all of that, some kind of General Regular Expression${NC}"\
    "${red}Parser or something.${NC}"
}
alias strings="stringsfun"
