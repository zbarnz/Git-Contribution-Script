#!/bin/bash

FILEONE=./one.txt
FILETWO=./two.txt

if test -f "$FILETWO"; then
  mv two.txt one.txt
  echo "two"
fi

if [ -f "$FILEONE" ]; then
  mv one.txt two.txt
  echo "1"
fi

git add . 

git commit -m "commit" 

git push origin master