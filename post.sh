#!/bin/bash

FILETWO=./two.txt

if test -f "$FILETWO"; then
  mv two.txt one.txt
else
  mv one.txt two.txt
fi

git add . 

git commit -m "commit" 

git push origin master