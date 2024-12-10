#!/bin/bash


#generate a list of md5's from a passed file.
#if there is only one argument, print the output to screen
#if there is 2 arguments, print the output into a file with the name of the second argument


for line in $(cat $1) 
do
	plaintext=$(echo "$line")
	ciphertext=$(echo -n "$plaintext" | md5sum)
	if [ $# == 1 ]; then
		echo "$ciphertext $plaintext" 
	elif [ $# == 2 ]; then
		echo "$ciphertext $plaintext" >> $2
	fi
done
