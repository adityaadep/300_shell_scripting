#!/bin/bash
# The script should run as soon as you log-on to system
# Print greetings based on time as follows.
# “Good morning” (5 AM – 12 PM)
# “Good noon” (12 PM – 1 PM)
# “Good afternoon” (2 PM – 5 PM)
# “Good evening” (5PM – 9 PM)
# “Good night” (9 PM – 5 AM)
hour=$(date "+%H")
if [[ $hour -ge 5 ]] && [[ $hour -lt 12 ]]; then
 echo "Good Morning"
elif [[ $hour -ge 12 ]] && [[ $hour -le 13 ]]; then
 echo "Good Noon"
elif [[ $hour -ge 14 ]] && [[ $hour -lt 17 ]]; then
 echo "Good AfterNoon"
elif [[ $hour -ge 17 ]] && [[ $hour -lt 21 ]]; then
 echo "Good evening"
else
 echo "Good Night"
fi
