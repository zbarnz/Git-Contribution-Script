  
#!/bin/bash

FILETWO=./two.txt
ScriptRestart=$(readlink -f "$0")

echo -e "\e[33mEnter ammount of contributions:"
read number

counter=1

if [[ $number -gt 0 ]]; then

  while [ $counter -le $number ]
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

else

echo -e "\e[33mNumber Cannot be less than 0"
exec "$ScriptRestart"

fi

echo not crashed