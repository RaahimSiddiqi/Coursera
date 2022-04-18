#!/usr/bin/env bash

takeAGuess() {
	echo "Can you guess how many files are located in the current Directory?";
	read userGuess
}


takeAGuess
noOfFiles=$(ls -A | wc -l)

while (( $userGuess != $noOfFiles ))
do
	if (( $userGuess < $noOfFiles ))
	then
		echo "Your guess was too low.";
	elif (( $userGuess > $noOfFiles ))
	then
		echo "Your guess was too high.";
	else 
	    echo "Invalid Input";
	fi
	takeAGuess
done

echo "You have guessed the answer correctly!"
echo "Corect Answer was" $noOfFiles
