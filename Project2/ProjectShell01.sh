#! bin/bash



#Need to extract information related to your topic by searching all files inside `folder`, which is located at folder inside folder. Please ensure the search is recursive, so it checks every file within `folder` and all its subfolders. look for given search text


function_IFfile(){
	echo "File Found:: $1"

# read file content

	local world=paris
	
	local search=$(grep -niw "$world"  "$1")
	

# search for text  -q = use to ignore output
	if [ -z "$search" ]; then
		
		echo "File is EMPTY $1"
		
		echo "-----------------------------"	
	else
	
		echo "Word Prent in $1"
	
		echo "Copy file into folder"
	
	
		cp "$1" "/HELLSHELL/Result2/$1"
		
		echo " " >> "/HELLSHELL/Result2/$1"
		
		echo  $search >> "/HELLSHELL/Result2/$1"
		
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





































