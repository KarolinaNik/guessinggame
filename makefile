README.md:
	touch README.md
	echo "Project: Guessing Game" > README.md
	echo "<br/> Date: $$(date)" >> README.md	
	echo -n "<br/> Number of rows in guessinggame:" >> README.md	
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
