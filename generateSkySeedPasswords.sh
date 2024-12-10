#!/bin/bash

#generates a list of passwords fitting the pattern SKY-SEED-XXXX where XXXX is a number 0000-9999

for i in {1..9999}
do
	if [ $i -lt 10 ]; then
		plaintext=$(echo "SKY-SEED-000"$i)
		ciphertext=$(echo -n "$plaintext" | md5sum)
		echo "$ciphertext $plaintext"
	elif [ $i -lt 100 ]; then
		plaintext=$(echo "SKY-SEED-00"$i)
		ciphertext=$(echo -n "$plaintext" | md5sum)
		echo "$ciphertext $plaintext"
	elif [ $i -lt 1000 ]; then
		plaintext=$(echo "SKY-SEED-0"$i)
		ciphertext=$(echo -n "$plaintext" | md5sum)
		echo "$ciphertext $plaintext"
	else
		plaintext=$(echo "SKY-SEED-"$i)
		ciphertext=$(echo -n "$plaintext" | md5sum)
		echo "$ciphertext $plaintext"
	fi
done > generatedList.txt
