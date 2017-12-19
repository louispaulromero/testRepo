#!/bin/bash
####################################
#
# Great script!
#https://help.ubuntu.com/lts/serverguide/backup-shellscripts.html
####################################
DATE=`date +%Y-%m-%d`
OUTPUT="$(git pull)"
STRING="Already up-to-date."
if [[ $OUTPUT != $STRING ]]
then
	cd old
	DIRECTORY="$(pwd)"
	cd ..
	cd current
	mkdir -p /$DIRECTORY/$DATE/
	mv tester.txt $_
	echo "Both Strings not Equal"
	echo $OUTPUT
	echo $STRING
	echo $DATE
#else
	#echo "Both Strings are not Equal"
fi