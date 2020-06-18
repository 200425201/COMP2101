#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

read -p "Input Number 1? " firstnumber 
read -p "Input Number 2? " secondnumber # read command reads input from user and send prompt to user to save value in variable
read -p "Input Number 3? " thirdnumber
sum=$((firstnumber + secondnumber + thirdnumber)) #this is how we process the variables and uses $() to run command inside 
product=$((firstnumber * secondnumber * thirdnumber)) #this is how we process the variables and uses $() to run command inside 

cat <<EOF
The sum of $firstnumber , $secondnumber and $thirdnumber numbers are $sum
The product of $firstnumber , $secondnumber and $thirdnumber numbers are $product
EOF
#providing summary of the what we done.
