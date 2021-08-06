#!/bin/sh

# shellcheck disable=SC2005
# shellcheck disable=SC2039

file=/srv/nswi177/arabidopsis.fasta

if ! [ -f $file ]; then
	echo "arabidopsis.fasta file missing" >  /dev/stderr
	exit 7
fi

translate () {
	echo "$1" | tr "A" "t" | tr "C" "g" | tr "T" "a" | tr "G" "c" | tr "[:lower:]" "[:upper:]"
}

regex=$1
new_file=$( mktemp )
temp_dir=$( mktemp -d )
temp_file=$( mktemp )
tail -n +2 < "$file" > "$new_file"

for find_me in $( grep -o "$regex" < $file | sort | uniq -d ); do
	compliment=$( translate "$find_me" )
	echo "$(tr -d "\n" < "$new_file" | sed "s/$compliment/\L&/g")" > "$new_file"
done

new_file1=$( mktemp )
sed -e 's/\(.\)/\1\n/g' < "$new_file"  > "$new_file1"

file_a=$( mktemp )

counter=1

lowercase=0
while IFS= read -r i; do
	if echo "$i" | grep -q '[a-z]'; then
		if [ $lowercase -eq 0 ]; then
			echo "" >> "$file_a"
			number=$(echo "($counter / 70) + 2" | bc)
			echo -n "$number:" >> "$file_a"	
		fi
		lowercase=1
	else
		lowercase=0	
	fi

	if [ $lowercase -eq 1 ]; then
        	echo -n "$i" >> "$file_a"
	fi

	counter="$((counter+1))"

done < "$new_file1"

awk 'NF' < "$file_a" > "$temp_file"

while IFS= read -r line; do
	echo "$( echo "$line" | tr "[:lower:]" "[:upper:]" )" >> "$temp_dir/$( translate "$( echo "$line" | cut -d ":" -f 2 | tr "[:lower:]" "[:upper:]" )")"
done < "$temp_file"

if [ -n "$(ls -A "$temp_dir")" ]; then
	for team_file in "$temp_dir/"*; do
	        basename "$team_file"
        	cat "$team_file"
	done
else 
	echo "$regex"
fi

rm -rf "$temp_dir"
rm -f "$file_a"
rm -f "$new_file1"
rm -f "$new_file"
rm -f "$temp_file"
