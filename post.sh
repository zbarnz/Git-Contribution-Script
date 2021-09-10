  
#!/bin/bash

FILETWO=./two.txt
echo "$FILETWO"

counter=1
while [ $counter -le 100 ]
do

if test -f "$FILETWO"; then
  mv two.txt one.txt
else
  mv one.txt two.txt
fi

git add . 

git commit -m "commit" 

git push origin master

((counter++))

done