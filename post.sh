  
#!/bin/bash

FILETWO=./two.txt
ScriptRestart=$(readlink -f "$0")
NumTest='^[0-9]+$'


echo -ne "\e[33mEnter ammount of contributions: "
read number

counter=1

if [[ $number =~ $NumTest && $number -gt 0 ]]; then

  echo -ne "\e[34mPLEASE WAIT... \r"

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

  ((counter++))

  done

  echo -e "\e[32mCOMPLETED"

else

echo -e "\e[31mINVALID ENTRY"
exec "$ScriptRestart"

fi