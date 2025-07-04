#! /bin/bash

#EXERCISE-2
#Create a script that counts the number of ".txt" files inside your present working directory.

#sudo code

echo "Print working directory: $(pwd) " 
number=0
for i in ./*.txt
do
	number=$((++number))
done

echo "Total number of txt file: ${number}"
