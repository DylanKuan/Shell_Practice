#!/bin/bash

echo "Enter your name: "
read name
#name=$1
#space=$2
space=my\ space
echo "Hello, $name, welcome to $space!"

number=$(shuf -i 1-10 -n 1)
#echo "$number"

while true
do
echo "Please enter a number between 1 to 10: "
read guess

if [[ $guess -eq $number ]]; then
	echo "You guessed right!!! Continue  (y/n): "
	read choice
	if [[ $choice = "y" ]] || [[ $choice = "Y" ]]; then
		number=$((RANDOM % 10 + 1))
		echo $number
		continue
	else
		break
	fi
elif [[ $guess -lt $number ]]; then
	echo "Guess bigger!"
else
	echo "Guess smaller!"
fi
done
