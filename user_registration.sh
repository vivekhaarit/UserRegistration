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

echo "last name"
read lastname
lastnamepattern="^[A-Z][a-z]{3,}"
if [[ $lastname =~ $lastnamepattern ]]
then
	echo "valid last name"
else
	echo "Invalid last name"
fi

echo "email:"
read email
#emailpattern="(^[a-z]+([.][a-z]?))[@]([a-z0-9]+[.][a-z]{1,})[.][a-z]{1,}?"
emailpattern="^[a-z]{1,}[0-9]*([.][a-z0-9]*)?[@][a-z0-9]+[.][a-z]{1,}"
#emailpattern="(^[a-z]+[0-9]*[@][a-z]+[.][a-z]+)"
if [[ "$email" =~ "$emailpattern" ]]
then
	echo "valid email"
else
	echo "Invalid email"
fi

echo "Mobile no :"
read "mobileno"
mobilenopattern="^[0-9]{2}[ ]?[0-9]{10}"
if [[ $mobileno =~ $mobilenopattern ]]
then
	echo "valid mobile no"
else
	echo "invalid mobile no"
fi

read -p "password: " password
passwordpattern="[A-Z]{1,}[a-z0-9]*([^a-zA-Z0-9]{1})[a-z0-9]{6,}"
if [[ $password =~ $passwordpattern ]]
then
	echo "valid password"
else
	echo "invalid password"
fi


