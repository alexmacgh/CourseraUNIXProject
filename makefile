all: readme

readme:
	touch README.md
	echo "Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	echo "" >> README.md
	date >> README.md
	echo -n "Number of lines of guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md	
