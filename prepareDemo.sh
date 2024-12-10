#!/bin/bash


#this should be pretty fuckin straightforward but ill explain it anyway. 
#if the file "generatedList.txt exists, delete it. yeah i could just delete it myself but wheres the fun in that?

if [ -e generatedList.txt ]; then
	echo "generatedList.txt is present"
	echo "removing generated list. Generate list of passwords with generateSkySeedPasswords.sh"
	rm generatedList.txt
fi

