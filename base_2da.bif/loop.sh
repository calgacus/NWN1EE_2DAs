#!/bin/bash
for filename in *.2da; do
	fname=$(echo $filename | cut -f 1 -d".");
	echo -e "$fname \n";
	[ -e "$filename" ] || continue 
		echo "id$(cat $filename | tail --lines=+2 | tr '\t' ' ' | tr -s ' ' | sed '/^[[:space:]]*$/d')" > $fname.csv;
done
