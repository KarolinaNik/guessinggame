#!/usr/bin/env bash
#File: guessinggame.sh

function guessinggame {

files=$(ls -1 | wc -l)

victory=0

while [[ $victory -eq 0 ]]
do
    echo "Try to guess the number of files in the current directory. Enter number:"
    read guess
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
done

}

guessinggame
