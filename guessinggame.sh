# a directory is not a file
number_of_files=$(ls -l | egrep "^-" | wc -l)
answer=-1
function guessing_game {
	while [[ $answer -ne $number_of_files ]]
	do
		echo -n "Guess the number of files: "
		read answer
		if [[ $answer -eq $number_of_files ]]
		then
			echo "Congratulations! You're right."
		else
			if [[ $answer -gt $number_of_files ]]
			then
				echo "Your guess was higher than expected."
			else
				echo "Your guess was lower than expected."
			fi
		fi
	done
}
guessing_game
