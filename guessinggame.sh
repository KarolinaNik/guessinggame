#!/usr/bin/env bash
#File: guessinggame.sh

#declaring function guessinggame:

function guessinggame {

files=$(ls -R | wc -l)

victory=0

#using loop:

while [[ $victory -eq 0 ]]
do
    echo "Try to guess the number of files in the current directory. Enter number:"
    read guess

    if [[ $guess =~ ^[0-9]+$ ]]
        then
           if [[ $guess -eq $files ]]
            then
                echo "You won!"
                victory=1
           elif [[ $guess -gt $files ]]
               then
                  echo "You entered: $guess. This is too big"
                  echo ""
            else
                 echo "You entered: $guess. This is too small"
                 echo ""
            fi
      else 
          echo "Make sure you enter a number for quantity of files"
       fi
done

}

#calling function guessingame:
guessinggame
