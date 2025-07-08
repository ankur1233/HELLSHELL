#! bin/bash



# extract inforamtion about a certain topic , searching all files in a certain folder


# folder 1 / folder 2 

# folder 1 --> file1 , file2 , folder 3

# we have to search inside folder on project 2 and make sure search in all file in side folder recursive


function_IFfile(){
	echo "File Found:: $1"

# read file content

#while rd= read -r line


	local world=paris
	
	local search=$(grep -niw "$world"  "$1")
	

# search for text  -q = use to ignore output
	if [ -z "$search" ]; then
		
		echo "File is EMPTY $1"
		
		echo "-----------------------------"	
	else
	
		echo "Word Prent in $1"
	
		echo "Copy file into folder"
	
	
		cp "$1" "/Users/ankursingh/HELLSHELL/Result2/$1"
		
		echo " " >> "/Users/ankursingh/HELLSHELL/Result2/$1"
		
		echo  $search >> "/Users/ankursingh/HELLSHELL/Result2/$1"
		
		echo "-----------------------------"
		
	fi					


}


function_IFFolder(){
		
	#echo $(cd "$1")
	cd $1
	
	echo $(pwd)
	
	echo "*********************************Open Folder $1 "

	for fileInFolder in ./*
	do
		
	
		if [ -d "$fileInFolder" ];then
			
				echo "folder found"
				function_IFFolder $fileInFolder
			
				echo "come out from folder:: $fileInFolder "

			
				echo "***********************************"
		else
			
			echo " file inside folder $(pwd) $fileInFolder"
			
			function_IFfile $fileInFolder
			
		fi
			
	done
	
	cd ..



}



for file in ./*
do
	if [ -f "$file" ]; then
	
		function_IFfile $file
		
	
	else
		
		echo "Folder Found $file"
		
		function_IFFolder $file
				
		
	fi
	
done


echo "Where i am now ::  $(pwd)"





































 
23: local world=paris
