#! bin/bash


num1=10
num2=20

echo " sum of two number $((num1+num2))"
#exit

echo " product of two number $((num1*num2))"


if [ $num1 -eq 10 ]; then
	echo "value match"
fi

echo " end of if"


# -z is use to check if file is not empty

# read is use to read user input

# -e check exisiting og ifle

# negate the codition ! is used

# -d check if [ -d anb] -- it check if direcoty is present or not

# -r : check if file is readable

# -x check if file is executable


for i in {1,3}
do
	echo "inside for"
done
