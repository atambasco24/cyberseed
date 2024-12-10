#for every line in file 1, compare to file 2. 

#!/bin/bash
 
for line in $(cat $1); do
	grep "$line" $2
done

