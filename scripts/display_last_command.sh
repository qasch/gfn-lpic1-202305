#!/usr/bin/env bash

# Display last used command from any BASH Shell automatically
# To make this script work, following lines have to be put in ~/.bashrc:
# 
#  shopt -s histappend
#  PROMPT_COMMAND="history -a;history -n"
#
# history -a -> append new entries to history file
# history -n -> read only new lines from history
#
# see https://askubuntu.com/questions/67283/is-it-possible-to-make-writing-to-bash-history-immediate

watch --no-title --interval 0.5 tail -n 1 ~/.bash_history
