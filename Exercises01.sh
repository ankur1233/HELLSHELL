#! bin/bash

#EXERCISE-1
#Create a Script that does the following:

#-Create  2 .txt files: "1.txt" "2.txt"
#-Inside 1.txt write the content of your pwd. in the long list format
#-Ask the user what prefix he wants to give to the file "1.txt"
#-Change the name of "1.txt" adding to it the prefix choosen by the user




echo "create two file 2.txt and 1.txt"

touch 1.txt 2.txt

ls -l >> 1.txt

read -p "prefix to add to 1.txt" pref

mv 1.txt ${pref}1.txt

echo "Done"
