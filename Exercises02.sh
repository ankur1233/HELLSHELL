#! bin/bash

#EXERCISE-2

#Create a script that create an executable Script
#whose name is decided by the user 


echo "exercise 02"



read -p "Please enter name of your executable script:" name

touch ${name}

echo "#! bin/bash" >> ${name}

echo "inside scripts filr" >> ${name}


chmod +x ${name}

echo "Done"