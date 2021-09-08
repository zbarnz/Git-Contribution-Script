#!/bin/bash

FILEONE=./one.txt
FILETWO=./two.txt

if test -f "$FILEONE"; then
  mv one.txt two.txt
fi

if test -f "$FILETWO"; then
  mv two.txt one.txt
fi

git add . 

git commit -m "commit" 

git push origin master