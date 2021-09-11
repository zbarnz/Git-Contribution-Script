  
#!/bin/bash

FILETWO=./two.txt
ScriptRestart=$(readlink -f "$0")
NumTest='^[0-9]+$'

echo -e -n "\e[33mEnter ammount of contributions: "
read number

counter=1

if [[ $number =~ $NumTest && $number -gt 0 ]]; then

  while [ $counter -le $number ]
  do

  if test -f "$FILETWO"; then
    mv two.txt one.txt
  else
    mv one.txt two.txt
  fi

  git add . > /dev/null 2>&1

  git commit -m "commit" > /dev/null 2>&1

  git push origin master > /dev/null 2>&1

  echo "$counter"

  ((counter++))

  done

else

echo -e "\e[31mINVALID ENTRY"
exec "$ScriptRestart"

fi