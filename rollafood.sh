#!/bin/bash
#Create an array containing 11 foods.
#Create 2 variables withr andom numbers in them from 1-6 each.
#Add the 2 numbers together and use the sum as an index to display a food 
#from your array

#create array of foods
foods=(apple bread banana pizza hamburger "rye and coke" sandwich ribs wings beer chicken)

#create random dice numbers
die1=$(($RANDOM %6))
die2=$(($RANDOM %6))

#the food index is 0 - 10
foodindex=$((die1 + die2))

#make dice total
dicetotal=$((die1 + die2 + 2))

#look up the food item
food=${foods[$foodindex]}

#pop out results
echo "Yum, I rolled $dicetotal which gives me $food!"

