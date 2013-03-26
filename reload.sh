#!/bin/bash
# Shwagger - Manage sets of shell aliases
# http://github.com/lsd/shwagger

# read+source file "$1" line by line
function reload_sets() {
  while IFS= read -r set
  do
    src $set
  done <"$1"
}

function src() {
  set="./sets/$1.sh"
  if [ -f $set ]; then
    . $set
    echo $?
  else
    echo "$set does not exist. check Shwagfile. skipping"
  fi
}


if [ -f "./Shwagfile" ]; then
  reload_sets "./Shwagfile"
else
  echo "./Shwagfile not found."
fi 
