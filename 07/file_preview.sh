#!/bin/sh
# shellcheck disable=SC2039
set -ueo pipefail

exit_code=0

for file in "$@"; do
    if [ -f $file ]; then
	echo "--- $file ---"
    	case $(file --mime-type -b "$file") in
        	text/*) head -n 30 $file 
		;;
        	application/pdf) pdftotext $file - | head -n 30
		;;
        	image/* | video/*) exiftool $file | head -n 30
		;;
        	*) file $file | head -n 30
		;;
    	esac
	echo ""
    else
	exit_code=1
    fi
done

exit $exit_code
