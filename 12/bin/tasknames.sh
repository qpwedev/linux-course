#!/bin/bash

for arg in "$@"; do
for file in tasks/$arg.md; do
	find=0
	while IFS= read -r line; do
		if [ "$line" == "---" ]; then
			find=1
		elif [ $find == 1 ]; then
			name=$(echo "$line" | cut -c8-)
			echo "$name"
			break
		fi
        done < "$file"
done
done
