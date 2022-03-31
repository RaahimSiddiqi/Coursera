#!/usr/bin/env bash
function makeaguess{
	echo "Enter the number of files in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

makeaguess

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	makeaguess
done

echo "Correct answer! here is the list of files:"
echo "---" && ls -1
