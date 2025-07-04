#! /bin/bash

#Create a script that checks if a number is divisible by either 2, 3 or 5.

#Create a function that does that.

#Hint: A number, say 18, is divisible by 3 if the reminder of the division 18/3 is 0, otherwise it is not divisible by 3. Review the lesson on "Arithmetic Expressions" and "  "IF Conditions" in case you have any doubts.



check_divisibility(){

	local number=$1

	if [ $(( number % 2 )) -eq 0 ]; then
		echo" Is divisinle by 2"
	fi
	
	if [ $(( number / 3 ))  -eq 0 ]; then
		echo" Is divisinle by 3"
	fi

	if [ $(( number / 5))  -eq 0  ]; then
		echo" Is divisinle by 5"
	fi
	

}

#Method 02

check_divisibiltiyWithFor(){

	local number=$1
	
	
	for num in {2,3,5}
	
	do	
		if [ $(( $number % $num )) -eq 0 ]; then
			echo "$number is divisible by $num"
		fi
			   
	done	



}

read -p "Please enter number: " number

check_divisibiltiyWithFor "$number"







