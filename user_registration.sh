#!/bin/bash
 
echo "welcome to user registration program"
echo "your first & last name, mobile no, email will be validated"

echo "enter your first name:"
read "firstname"
firstnamepattern="^[A-Z][a-z]{3,}"
if [[ $firstname =~ $firstnamepattern ]]
then
	echo "valid first name"
else
	echo "invalid first name"
fi
