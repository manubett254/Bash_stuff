#!/usr/bin/env bash

#this script does the following
: <<'COMMENT'
Asks the user for their name.

Asks for their age.

If age < 18 → print “Young and fierce.”

If age 18–30 → print “Prime time energy.”

If age > 30 → print “Wisdom mode engaged.”

Prints today’s date.

COMMENT

read -rp "what is your name " name

echo " Hello $name this is the start of the script" 

read -rp " How old are you? " age

if [[ $age -lt 18 ]]; then
	echo " Young and fierce "
elif [[ $age -gt 30 ]]; then
	echo "Wisdom mode engaged"
else
	echo "Prime time energy "
fi

today=$(date)

echo " today is $today "















