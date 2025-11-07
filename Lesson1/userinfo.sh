#!/usr/bin/env bash

: <<'COMMENT'
this script does the following
Prints a friendly welcome message.

Gets the user’s name, age, and current mood using read.

Stores the current directory in a variable using command substitution ($(pwd)).

Uses if/elif/else to respond to the user’s age using these rules:

age < 18 → “You’re young and blazing with potential.”

18 ≤ age ≤ 35 → “You’re in the golden zone — prime energy.”

age > 35 → “Seasoned and steady. Wisdom unlocked.”

Uses another if statement to react to the user’s mood:

if the mood is “happy” → print "Great vibes today!"

if the mood is “tired” → print "Remember to take a breather."

if the mood is anything else → print "Emotions noted, commander."

Finally, print:

today’s date ($(date))

the directory the script was run from

a thank-you message

COMMENT

echo " Hello there people " 
read -rp " what is your name? " name

read -rp "how old are you" age 

read -rp " how are you feeling rn " mood

echo "From what you've said: Your name is $name, you are $age, and you're feeling $mood."


if [[ $age -lt 18 ]]; then 
	echo " You're young and blazing with potential."
elif [[ $age -gt 35 ]]; then
	echo " Seasoned and steady. Wisdom unlocked."
	
else
	echo " You're in the golden -- prime energy."
	
fi

directory=$(pwd)
if [[ $mood == "happy" ]]; then 
 	echo " Great vibes today!"
 	
 elif [[ $mood == "tired" ]]; then 
 	echo " Remember to take a breather. "
 	
 else 
 echo " Emotions noted, commander."
 fi
 
 today=$(date)
 
 echo " Hey $name, thank you for spending time in this script"
 echo " Here is a summary:"
 echo " today's date is $today"
 echo " this script was run in $directory "
 echo "have a lovely day"
 




































