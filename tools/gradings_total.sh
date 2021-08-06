#!/bin/bash

set -ueo pipefail

find [0-9][0-9]/ -type f | (
    total=0
    while read -r fname; do
	if [[ "$(basename $fname)" == "GRADING.md" ]]; then
		points=$(grep -o "\*\*[0-9]\+\*\*" "$fname" | cut -d"*" -f3)
		total=$((points+total))
		labnum="$( echo $fname | cut -d"/" -f1)"
		echo "$labnum $points"
        fi
    done
    echo "Total: $total. You fucked up $(($labnum*100-$total)) points"
    echo "Remains: $((1400-$labnum*100))"
    if [[ $total -gt "700" ]];then echo "You already have 3"; fi
    if [[ $total -gt "1050" ]];then echo "You already have 2"; fi
    if [[ $total -gt "1260" ]];then echo "You already have 1"; fi
)
