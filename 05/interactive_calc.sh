#!/bin/bash
set -ueo pipefail
SUM=0

if [ "$#" = 1 ] && [ "$1" != "-" ]; then
    if [ -f "$1" ]; then
	while read -r sign number; do
	    case $sign in
	         +) SUM=$(echo "$SUM" + "$number" | bc) ;;
	         -) SUM=$(echo "$SUM" - "$number" | bc) ;;
	        \*) SUM=$(echo "$SUM" \* "$number" | bc) ;;
	         /) SUM=$(echo "$SUM" / "$number" | bc) ;;
	    esac
	done < "$1"
	echo "= $SUM"
    else 
	exit 1
    fi
else
    while read -r sign number; do
	case $sign in
	     +) SUM=$(echo "$SUM" + "$number" | bc) ;;
	     -) SUM=$(echo "$SUM" - "$number" | bc) ;;
	    \*) SUM=$(echo "$SUM" \* "$number" | bc) ;;
	     /) SUM=$(echo "$SUM" / "$number" | bc) ;;
	esac
    done
    echo "= $SUM"
fi
