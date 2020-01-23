create_readmefile: guessinggame.sh
	touch README.md
	echo "## Title: Guessing Game" >README.md
	echo "The date is" "$$(date)" >> README.md
	echo "This files has:" `wc -l guessinggame.sh | egrep -o "[0-9]+"`  "lines">>README.md

