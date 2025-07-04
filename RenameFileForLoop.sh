#! /bin/bash

#EXERCISE-3
#In this exercise after creating some .txt and .jpg files, 
#we will let the user choose either the .jpg or the .txt files, 
#and rename all these files.

#-Create any number of different .txt files and .jpg files.
#-Let the user choose either the .jpg or the .txt files and
#keep asking until the user press either "j" or "t".
#-Let the user choose a Prefix to add to the name of all the selected files
#(all the .jpg or all the .txt files).
#-Rename all the selected files adding this prefix to their name.



#-Create any number of different .txt files and .jpg files.

for i in {1..4}; do
	touch "${i}file.txt"
done


for i in {1..3}; do
	touch "${i}file.jpg"
done

echo "Create file ... "
sleep 0.6
ls -l

echo ""


# user selection for file 

choice=""

while [ "$choice" != "j" -a "$choice" != "t" ];
do
	read -p "Please enter correct choise : " choice
done

read -p "write prefix to add to the file " pref

echo "the prefix is $pref"



# condition to check what user selected
if [ $choice == "t" ]; then

	for ele in *.txt
		do
			mv ${ele}  ${pref}${ele}
		
		done
	
else
	
	for ele in *.jpg
		do
			
			# renamefile or move file to new file name
			mv ${ele}  ${pref}${ele}
		done
			
fi


# print all file

ls -l





