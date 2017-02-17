#!/bin/bash
# this script demonstrates using arrays and getting user input

#Variables
##########
#Create an array of colours with a fixed set of values

colours=("red" "green" "blue" "orange" )

# create a hash of animals using their colour as the key for the animals
declare -A animals
animals=([red]="cardinal" [green]="frog" [blue]="lobster" [orange]="orangutan" )

#Main
########

numcolours=${#colours[@]}
read -p "Give me a number from 1 to $numcolours: " numrequested
num=$((num -1))
colour=${colours[$num]}
animal=${animals[$colour]}
echo "Index $numrequested finds a $colour $animal"

#use a for loop to display all the related colour/animal pairs
colour=

for colour in "${colours[@]}" ; do
	echo "The $colour animal is a ${animals[$colour]}"
done

