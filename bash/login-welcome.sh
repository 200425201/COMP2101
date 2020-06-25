#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
loginname="$USER" #dynamic user name saving to variable
hostname="$(hostname)" #dynamic hostname saving to variable
day=$(date +%A) #A for day names
currenttime=$(date +%I:%M\ %p) #date with specific format

###############
# Main        #
###############
if [ "$day" = Monday ] #if else to compare string
then
cows="Welcome to planet $hostname, joyful $loginname!" #customized coutput
elif [ "$day" = Tuesday ]
then
cows="Welcome to planet $hostname, knowing $loginname!"
elif [ "$day" = Wednesday ]
then
cows="Welcome to planet $hostname, knowledgeable $loginname!"
elif [ "$day" = Thursday ]
then
cows="Welcome to planet $hostname, ladylike $loginname!"
elif [ "$day" = Friday ]
then
cows="Welcome to planet $hostname, alluring $loginname!"
elif [ "$day" = Saturday ]
then
cows="Welcome to planet $hostname, loyal $loginname!"
else
cows="Welcome to planet $hostname, musical $loginname!"
fi
cowsay "$cows It is $currenttime on $day ."
#adding output to cowsay to normalize the cowsay command's output.