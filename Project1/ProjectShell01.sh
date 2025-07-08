#! bin/bash



# extract inforamtion about a certain topic , searching all files in a certain folder


# folder 1 / folder 2 

# folder 1 --> file1 , file2 , folder 3

# check all file in folder 
# open file 
# search for "text"
# create new file and add line number where you found 



#  make result folder
if [ ! -d ./result01 ]; then
	echo "Folder Created: "
	mkdir result01
fi



#

for file in ./*
do
	
	if [ -f "$file" ]; then
		
	
		echo "File Found:: $file"
	
	# read file content
	
	#while rd= read -r line
	
	#do
	#	echo "$line"
	#done < "$file"
	
	
		world=paris
		
		search=$(grep -ni "$world"  "$file")
		

	# search for text  -q = use to ignore output
		if [ -z "$search" ]; then
			
			echo "File is EMPTY $file"
			
			echo "-----------------------------"	
		else
		
			echo "Word Prent in $file"
		
			echo "Copy file into folder"
		
		
			cp "$file" "result01/$file"
			
			echo >> " "
			
			echo $search >> "result01/$file"
			
			echo "-----------------------------"
			
		fi					
	
	else
		
		echo "Folder Found $file"
		
		echo "-----------------------------"
		
	fi
	
done































