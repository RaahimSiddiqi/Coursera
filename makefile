all: README.md

README.md: guessinggame.sh
	echo "Course: Unix WorkBench (Linux Shell Scripting)\n" > README.md
	echo "Peer-Assignment Submission - Guessing Game\n" >> README.md
	echo -n "Creation Date of MakeFile/README:  " >> README.md
	date >> README.md  
	echo -n "\nNumber of Lines of Code in the guessinggame.sh File:  " >> README.md
	grep -c '' guessinggame.sh >> README.md
	echo "END" >> README.md

