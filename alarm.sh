#!/bin/bash
# we will use mplayer to play the alarm
#you can ender date like today 2:90PM or tomorrow 3:04AM
echo Current time is $(date). 
printf "What time are you setting this alarm for? "
read date
echo Okay! Will ring you on $(date --date="$date").
a=$(date --date="$date" +%s)
b=$(date +%s);
echo $a
echo $b
c=$((a-b))
echo $c
sleep $c;
echo Wake up!
while true; do
	/usr/bin/mplayer /home/aditi/alarm.mp3.mp3
	sleep 1
done