#!/bin/bash
tmp=$(mktemp)
title="| Team | "
subtitle="| - | - | "
echo '---
title: Score
---
<table id="score-table">' > "$tmp"

for arg in "$@"; do
	title="$title $(./bin/tasknames.sh "$arg") |"
	subtitle="$subtitle - |"
done
title="$title Sum |" 
echo "$title" >> "$tmp"
echo "$subtitle" >> "$tmp"

while read -r line; do

	officialname=$(echo "$line" | sed 's/[A-Z]\+/:&/g' | cut -d ":" -f2)
	namesinteams=$(echo "$line" | sed 's/[A-Z]\+/:&/g' | cut -d ":" -f1)
        team1=$(echo "$namesinteams" | cut -d " " -f1)
        team2=$(echo "$namesinteams" | cut -d " " -f2)
	oneline="| $officialname | "
	sum=0
	for arg in "$@"; do
		num=$(grep "$team1:$arg\|$team2:$arg" < score.csv | cut -d ":" -f3 | paste -s -d+ - | bc) 
		
		if [ -z "$num" ]; then 
			num="-"
		else
			sum=$((sum+num))
		fi	
		oneline="$oneline $num |"
	done
	oneline="$oneline $sum |"
	echo "$oneline" >> "$tmp"

done < teams.csv

cat "$tmp"
rm -f "$tmp"
