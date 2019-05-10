README.md:
	touch README.md
	echo "Project: Guessing Game" > README.md
	echo "Date: $$(date)" >> README.md	
	echo "Number of rows in guessinggame:" >> README.md	
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
