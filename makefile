create_readme: guessingGame.sh
	touch README.md
	echo "## Title: Guessing Game" >README.md
	echo " \n" >> README.md
	echo "The date is" "$$(date)" >> README.md
	echo " \n">>README.md
	echo "This files has:" `wc -l guessingGame.sh | egrep -o "[0-9]+"`  "lines">>README.md

