# Write a shell script that asks the user for the number of lines they would like to display from the /etc/passwd file and display those lines.

#!/bin/bash

LINE_NUM=1
while read LINE
do
  echo "${LINE_NUM}: ${LINE}"
  ((LINE_NUM++))
done < /etc/passwd
